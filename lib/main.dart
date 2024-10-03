import 'package:flutter/material.dart';
import 'package:saffco/pages/create_acc.dart';
import 'package:saffco/pages/home_page.dart';
import 'package:saffco/pages/password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/password': (context) => const PasswordPage(),
        '/create_account': (context) => const CreateAccPage(),
      },
    );
  }
}
