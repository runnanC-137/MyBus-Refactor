import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybus/pages/login/index.dart';
import 'package:mybus/pages/navegador.dart';
import 'package:mybus/services/auth-service.dart';
import 'package:provider/provider.dart';

import '../pages/feedback/index.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading) {
      return loading();
    } else if (auth.user == null) {
      return Login();
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
