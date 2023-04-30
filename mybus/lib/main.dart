import "package:flutter/material.dart";
import "package:mybus/pages/navegador.dart";
import "package:mybus/rotas.dart";
import "firebase_options.dart";
import "package:firebase_core/firebase_core.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

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
      home: const Navegador(title: 'Flutter Demo Home Page'),
      initialRoute: 'navegador',
      onGenerateRoute: MyRouter.routerGenerate,
    );
  }
}
