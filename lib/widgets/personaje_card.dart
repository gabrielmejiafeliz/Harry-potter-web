import 'package:flutter/material.dart';
import '../models/personaje.dart';

class PersonajeCard extends StatelessWidget {
  final Personaje personaje;

  PersonajeCard({required this.personaje});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(personaje.nombre),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(personaje.nombre),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(personaje.foto),
                Text(personaje.detalles),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cerrar'),
              ),
            ],
          ),
        );
      },
    );
  }
}
