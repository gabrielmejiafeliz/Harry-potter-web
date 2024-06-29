import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la página de portada al presionar el botón
            Navigator.pushNamed(context, '/portada');
          },
          child: Text('Empezar'),
        ),
      ),
    );
  }
}
