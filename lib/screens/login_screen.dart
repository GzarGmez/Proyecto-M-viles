import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Acceda al nombre de usuario y la contraseña de los controladores
      final username = "213360";
      final password = "213360";

      // Realice el inicio de sesión con el nombre de usuario y la contraseña
      // ... su lógica de inicio de sesión aquí ...

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Iniciando sesión')),
      );
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Up Chiapas'),
      ),
      backgroundColor: Color(0xFFE6E6FA), // Define aquí el color lila que desees
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Aquí agregamos la imagen encima del formulario
              Image.asset(
                'assets/images/Logo.png',
                height: 150, // ajusta la altura según sea necesario
              ),
              SizedBox(height: 80.0), // espacio entre la imagen y el formulario
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingresa tu correo Electronico';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingresa tu contraseña!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: _login,
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
