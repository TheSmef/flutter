import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pr/url_page.dart';
import 'package:pr/presentation/widgets/custom_button.dart';
import 'package:pr/presentation/widgets/text_field_obscure.dart';

import '../data/repository/auth_repository_impl.dart';
import '../domain/Cubit/cubit/reg_status_cubit.dart';
import '../domain/usercases/auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> _key = GlobalKey();

  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _otchController = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                const Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
                const Spacer(),
                TextFormField(
                  controller: _lastnameController,
                    onChanged: (value) {
                      context.read<RegStatusCubit>().Enable(
                          _firstnameController.text, _lastnameController.text, _otchController.text ,_loginController.text, _passwordController.text);
                    },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле фамилия пустое';
                    }
                    if (value.length < 3) {
                      return 'Фамилия должена быть не менее 3 символов';
                    }
                    if (value.contains(RegExp('[!"№;%:?*()0-9]'))) {
                      return 'Фамилия не может включать в себя символы !"№;%:?*()0-9';
                    }
                    return null;
                  },
                  maxLength: 30,
                  decoration: const InputDecoration(
                    labelText: 'Фамилия',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _firstnameController,
                  onChanged: (value) {
                      context.read<RegStatusCubit>().Enable(
                          _firstnameController.text, _lastnameController.text, _otchController.text ,_loginController.text, _passwordController.text);
                    },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле имя пустое';
                    }
                    if (value.length < 3) {
                      return 'Имя должно быть не менее 3 символов';
                    }
                    if (value.contains(RegExp('[!"№;%:?*()0-9]'))) {
                      return 'Имя не может включать в себя символы !"№;%:?*()0-9';
                    }
                    return null;
                  },
                  maxLength: 30,
                  decoration: const InputDecoration(
                    labelText: 'Имя',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _otchController,
                  onChanged: (value) {
                      context.read<RegStatusCubit>().Enable(
                          _firstnameController.text, _lastnameController.text, _otchController.text ,_loginController.text, _passwordController.text);
                    },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Поле отчество пустое';
                    }
                    if (value.length < 3) {
                      return 'Отчество должено быть не менее 3 символов';
                    }
                    if (value.contains(RegExp('[!"№;%:?*()0-9]'))) {
                      return 'Отчество не может включать в себя символы !"№;%:?*()0-9';
                    }
                    return null;
                  },
                  maxLength: 30,
                  decoration: const InputDecoration(
                    labelText: 'Отчество',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _loginController,
                  onChanged: (value) {
                      context.read<RegStatusCubit>().Enable(
                          _firstnameController.text, _lastnameController.text, _otchController.text ,_loginController.text, _passwordController.text);
                    },
                  validator: (value) {
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
                      context.read<RegStatusCubit>().Enable(
                          _firstnameController.text, _lastnameController.text, _otchController.text ,_loginController.text, _passwordController.text);
                    },
                  validator: (value) {
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
                    hintText: 'Пароль',
                    suffixIcon: TextFieldObscure(isObscure: (value) {
                      setState(() {
                        isObscure = value;
                      });
                    }),
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                BlocBuilder<RegStatusCubit, RegStatusState>(
                  builder: (context, state) {
                    if (state is RegDisabled) {
                      return const Center(
                          child: Text("Введите все данные для регистрации"));
                    } else {
                      return CustomButton(
                        content: 'Регистрация',
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            signUp();
                          } else {}
                        },
                      );
                    }
                  },
                ),
                const Spacer(flex: 3),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUp() async {
    final AuthRepositoryImlp auth = AuthRepositoryImlp();

    var result = await Auth(auth).signUp(RegParams(
      lastname: _lastnameController.text,
      firstname: _firstnameController.text,
      otch: _otchController.text,
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
      Navigator.pushNamed(context, UrlPage.signIn);
    });
  }
}
