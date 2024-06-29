import 'package:flutter/material.dart';

class ContratameView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contrátame'),
      ),
      body: Stack(
        fit: StackFit.expand, // Hace que el Stack ocupe todo el espacio disponible
        children: [
          // Fondo negro para los textos
          Container(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          // Contenido centrado (foto y textos)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Foto con CircleAvatar
                CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(height: 20),
                // Textos con fondo blanco para contraste
                Container(
                  padding: EdgeInsets.all(16),
                  color: Color.fromARGB(255, 32, 31, 31),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nombre: Gabriel Mejia Feliz',
                        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Correo: Gabomejia32@gmail.com',
                        style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Teléfono: 829-448-8875',
                        style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'GitHub: https://github.com/gabrielmejiafeliz?tab=repositories',
                        style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'LinkedIn: https://www.linkedin.com/in/gabriel-mejia-feliz/',
                        style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
