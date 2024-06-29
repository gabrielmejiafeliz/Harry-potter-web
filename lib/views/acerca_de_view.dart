import 'package:flutter/material.dart';

class AcercaDeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de la Serie'),
      ),
      body: Stack(
        children: [
          // Contenedor para la imagen
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/miniatura.jpg', // Ruta de tu imagen
              height: MediaQuery.of(context).size.height * 0.6, // Altura ajustada (60% del alto de la pantalla)
              fit: BoxFit.cover, // Ajuste para cubrir el espacio
            ),
          ),
          // Contenedor para el texto
          Positioned(
            top: MediaQuery.of(context).size.height * 0.6, // Coloca el texto debajo de la imagen
            left: 18,
            right: 18,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(189, 0, 0, 0), // Fondo oscuro para el texto
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter es una serie de películas basada en las novelas de J.K. Rowling. '
                    'La serie consta de 8 películas, comenzando con "Harry Potter y la piedra filosofal" en 2001 '
                    'y terminando con "Harry Potter y las reliquias de la muerte – Parte 2" en 2011. '
                    'La tercera película, "Harry Potter y el prisionero de Azkaban", fue dirigida por Alfonso Cuarón.',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
