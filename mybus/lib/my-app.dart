import 'package:flutter/material.dart';

import 'widgets/auth-check.dart';
import 'rotas.dart';

final ThemeData defaultTheme = ThemeData(
  primaryColor: Colors.indigo,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color.fromARGB(66, 200, 25, 25),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme,
      home: AuthCheck(), //const Navegador(title: 'Flutter Demo Home Page'),
      // initialRoute: 'navegador',
      onGenerateRoute: MyRouter.routerGenerate,
    );
  }
}
