import 'package:flutter/material.dart';

class MiCuentaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Cuenta'),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/LogoGrande.png'),
                ),
                SizedBox(height: 16),
                Text(
                  'Andrés Guízar',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Correo Electrónico: 213360@ids.upchiapas.edu.mx',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Número de Teléfono: +52 963 171 8235',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: 2, // Establecer el índice seleccionado como 'Perfil'
        selectedItemColor: Colors.purple,
        onTap: (index) {
          // Lógica de navegación según el índice seleccionado
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home'); // Asegúrate de definir esta ruta
              break;
            case 1:
              Navigator.pushNamed(context, '/cart'); // Asegúrate de definir esta ruta
              break;
            case 2:
            // Ya estamos en la pantalla de perfil, no hacemos nada
              break;
          }
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MiCuentaScreen(),
    routes: {
      '/home': (context) => HomeScreen(), // Asegúrate de definir esta pantalla
      '/cart': (context) => CarritoScreen(), // Asegúrate de definir esta pantalla
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text('Pantalla de Inicio'),
      ),
    );
  }
}

class CarritoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
      ),
      body: Center(
        child: Text('Pantalla del Carrito'),
      ),
    );
  }
}
