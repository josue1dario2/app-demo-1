import 'package:demo_1_proyect/screens/register_screen.dart';
import 'package:demo_1_proyect/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home2',
      routes: {
        'home2': (_) => const HomeRegular(),
        'login': (_) => const LoginScreen(),
        'register': (_) => const RegisterScreen()
      },
    );
  }
}
