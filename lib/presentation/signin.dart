import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pr/domain/Cubit/cubit/auth_status_cubit.dart';
import 'package:pr/presentation/widgets/custom_button.dart';
import 'package:pr/presentation/widgets/text_field_obscure.dart';

import '../url_page.dart';
import '../data/repository/auth_repository_impl.dart';
import '../domain/entity/role_entity.dart';
import '../domain/usercases/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> _key = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool isObscure = true;
  bool _isValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(child: SizedBox()),
                const Text(
                  'Автомобильный магазин',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Expanded(child: SizedBox()),
                TextFormField(
                  controller: _loginController,
                  onChanged: (value) {
                    context.read<AuthStatusCubit>().EnableAuth(
                        _loginController.text, _passwordController.text);
                  },
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле логин пустое';
                    }
                    if (value.length < 3) {
                      return 'Логин должен быть не менее 3 символов';
                    }
                    if (value.contains(RegExp('[!"№;%:?*()]'))) {
                      return 'Логин не может включать в себя символы !"№;%:?*()';
                    }
                    return null;
                  },
                  maxLength: 16,
                  decoration: const InputDecoration(
                    labelText: 'Логин',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  onChanged: (value) {
                    context.read<AuthStatusCubit>().EnableAuth(
                        _loginController.text, _passwordController.text);
                  },
                  validator: (value) {
                    if (!_isValid) {
                      return null;
                    }
                    if (value!.isEmpty) {
                      return 'Поле пароль пустое';
                    }
                    if (value.length < 8) {
                      return 'Пароль должен быть длинной 8 символов';
                    }
                    if (!value.contains(RegExp('[0-9]'))) {
                      return 'Пароль должен включать в себя как минимум 1 цифру';
                    }
                    return null;
                  },
                  maxLength: 30,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    suffixIcon: TextFieldObscure(isObscure: (value) {
                      setState(() {
                        isObscure = value;
                      });
                    }),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                BlocBuilder<AuthStatusCubit, AuthStatusState>(
                  builder: (context, state) {
                    if (state is AuthDisabled) {
                      return const Center(
                          child:
                              Text("Введите логин и пароль для авторизации"));
                    } else {
                      return CustomButton(
                        content: 'Войти',
                        onPressed: () {
                          _isValid = true;
                          if (_key.currentState!.validate()) {
                            signIn();
                          } else {}
                        },
                      );
                    }
                  },
                ),
                const Expanded(flex: 3, child: SizedBox()),
                InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: () {
                    _loginController.clear();
                    _passwordController.clear();
                    _isValid = false;
                    _key.currentState!.validate();
                    Navigator.pushNamed(context, 'sign_up');
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Регистрация в системе',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

  void signIn() async {
    final AuthRepositoryImlp auth = AuthRepositoryImlp();
    var result = await Auth(auth).signIn(AuthParams(
      login: _loginController.text,
      password: _passwordController.text,
    ));
    result.fold((l) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      );
    }, (r) {
      switch (r) {
        case RoleEnum.admin:
          {
            Navigator.pushNamedAndRemoveUntil(
                context, UrlPage.admin, (route) => false);
            break;
          }
        case RoleEnum.user:
          Navigator.pushNamedAndRemoveUntil(
              context, UrlPage.client, (route) => false);
          break;
      }
    });
  }
}
