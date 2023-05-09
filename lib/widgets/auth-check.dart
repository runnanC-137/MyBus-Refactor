import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybus/pages/login/login_page.dart';
import 'package:mybus/pages/navegador.dart';
import 'package:mybus/services/auth-service.dart';
import 'package:provider/provider.dart';

import '../pages/feedback/feedback.dart';
import '../pages/navegacao/splash_screen_page.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  AuthService? auth;

  void _init() async {
    await auth?.authCheck(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    auth = Provider.of<AuthService>(context);
    if (auth!.isLoading) {
      _init();
      return loading();
    } else if (auth!.user == null) {
      /* return Login(); */
      return SplashScreen();
    } else {
      return const Navegador(title: 'title');
    }
  }

  loading() => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
}
