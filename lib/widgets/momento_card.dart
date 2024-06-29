import 'package:flutter/material.dart';

class MomentoCard extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final String foto;

  MomentoCard({
    required this.titulo,
    required this.descripcion,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            foto,
            fit: BoxFit.cover,
            height: 400, // Altura de la imagen
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  descripcion,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
