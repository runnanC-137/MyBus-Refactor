import 'package:flutter/material.dart';

import 'pages/cadastro/cadastro_page.dart';
import 'pages/info/info.dart';
import 'pages/login/login_page.dart';
import 'pages/navegador.dart';
import 'pages/feedback/feedback.dart';

class MyRouter {
  static Route<dynamic> routerGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case 'navegador':
        return MaterialPageRoute(
          builder: (_) => const Navegador(title: 'title'),
        );
      case "login":
        return MaterialPageRoute(builder: (_) => Login());
      case "cadastro":
        return MaterialPageRoute(builder: (_) => Cadastro());
      case "info":
        return MaterialPageRoute(builder: (_) => Info());
      case "feedback":
        return MaterialPageRoute(builder: (_) => FeedbackApp());
      /*case "tutorial":
        return MaterialPageRoute(builder: (_) => Tutorial());
      case "mapa":
        return MaterialPageRoute(builder: (_) => Mapa());*/
      default:
        return _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Tela não encontrada!"),
        ),
        body: const Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
