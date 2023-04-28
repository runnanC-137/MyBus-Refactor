import "package:flutter/material.dart";
import "package:mybus/pages/navegador.dart";
import "package:mybus/rotas.dart";

void main() => runApp(const MyApp());

final ThemeData defaultTheme = ThemeData(
  primaryColor: Colors.indigo,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Color.fromARGB(66, 200, 25, 25),
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
      home: const Navegador(title: 'Flutter Demo Home Page'),
      initialRoute: 'navegador',
      onGenerateRoute: MyRouter.routerGenerate,
    );
  }
}
