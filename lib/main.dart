import 'package:calculador_de_notas/view/login_page.dart';
import 'package:calculador_de_notas/view/notes_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const LoginPage(),
        '/notes' : (context) => const NotesPage(),
      },
    );
  }
}
