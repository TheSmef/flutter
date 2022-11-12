import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pr/presentation/admin/homeadmin.dart';
import 'package:pr/presentation/client/homeclient.dart';
import 'package:pr/presentation/signin.dart';
import 'package:pr/presentation/signup.dart';

import 'url_page.dart';

class AppRouter {


  Route<dynamic>? generateRouter(RouteSettings settigns) {
    switch (settigns.name) {
      case UrlPage.signIn:
        {
          return MaterialPageRoute(builder: (_) => SignIn());
        }
      case UrlPage.signUp:
        {
          return MaterialPageRoute(builder: (_) => SignUp());
        }
      case UrlPage.admin:
        {
          return MaterialPageRoute(builder: (_) => HomeAdmin());
        }
      case UrlPage.client:
        {
          return MaterialPageRoute(builder: (_) => HomeClient());
        }
      default:
        {
          return null;
        }
    }
  }
}
