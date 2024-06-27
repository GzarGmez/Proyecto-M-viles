import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart' as Home; // Usamos un alias 'Home' para el archivo home_screen.dart
import 'screens/perfil_screen.dart';
import 'screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Ruta inicial para el SplashScreen
      routes: {
        '/': (context) => SplashScreen(), // SplashScreen como ruta inicial
        '/login': (context) => LoginScreen(), // Ruta de login
        '/home': (context) => Home.HomeScreen(), // Usamos el prefijo 'Home' para acceder a HomeScreen
        '/perfil': (context) => PerfilScreen(), // Ruta de la pantalla de perfil
      },
    );
  }
}
