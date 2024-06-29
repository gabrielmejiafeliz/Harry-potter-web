import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/personaje.dart'; // Asegúrate de importar el modelo de personaje aquí

class DetallePersonajeView extends StatelessWidget {
  final Personaje personaje;

  DetallePersonajeView({required this.personaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(personaje.nombre),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(personaje.foto),
            ),
            SizedBox(height: 20.0),
            Text(
              personaje.detalles,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volver a la página anterior
              },
              child: Text('Cerrar'),
            ),
          ],
        ),
      ),
    );
  }
}
