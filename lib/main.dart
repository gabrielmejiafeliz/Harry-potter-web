import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/personaje.dart'; // Asegúrate de importar el modelo de personaje aquí
import 'views/portada_view.dart';
import 'views/personajes_view.dart';
import 'views/momentos_view.dart';
import 'views/acerca_de_view.dart';
import 'views/en_mi_vida_view.dart';
import 'views/contratame_view.dart';
import 'home_page.dart'; // Importa la página de inicio

void main() {
  List<Personaje> misPersonajes = [
    Personaje(
      nombre: 'Harry Potter',
      detalles: 'El famoso mago protagonista de la serie. En esta historia, Harry Potter es un joven mago que asiste a Hogwarts, la escuela de magia y hechicería. En particular, en "El prisionero de Azkaban", Harry descubre más sobre su pasado familiar, enfrenta nuevos desafíos y se encuentra con Sirius Black, un personaje clave en la trama de esta película.',
      foto: 'assets/harry_potter.jpg',
    ),
    Personaje(
      nombre: 'Hermione Granger',
      detalles: 'Hermione Granger es interpretada por la actriz británica Emma Watson. Hermione es uno de los personajes principales de la serie de Harry Potter, siendo una de las mejores amigas de Harry Potter y Ron Weasley. En la tercera película, Hermione sigue siendo un personaje central y muestra su inteligencia, valentía y lealtad mientras ayuda a Harry y Ron a enfrentarse a diversos desafíos, incluido el misterio que rodea al prisionero de Azkaban, Sirius Black.',
      foto: 'assets/hermione_granger.jpg',
    ),
    Personaje(
      nombre: 'Ron Weasley',
      detalles: 'Ron Weasley es uno de los personajes principales y es interpretado por el actor Rupert Grint. Ron es uno de los mejores amigos de Harry Potter y Hermione Granger. En esta tercera película de la serie, Ron sigue acompañando a Harry en sus aventuras en Hogwarts mientras enfrentan nuevos desafíos, incluyendo la presencia del peligroso Sirius Black, el prisionero de Azkaban. Ron es conocido por su lealtad, sentido del humor y valentía, características que se desarrollan a lo largo de la serie de películas de Harry Potter.',
      foto: 'assets/ron_weasley.jpg',
    ),
    Personaje(
      nombre: 'Sirius Black',
      detalles: 'Es el padrino del protagonista. Creado por la británica J. K. Rowling, Sirius es mencionado en Harry Potter y la piedra filosofal y apareció por primera vez en Harry Potter y el prisionero de Azkaban (1993), y es conocido como el mismo prisionero.',
      foto: 'assets/sirius_black.jpg',
    ),
  ];

  runApp(HarryPotterApp(misPersonajes: misPersonajes));
}

class HarryPotterApp extends StatelessWidget {
  final List<Personaje> misPersonajes; // Lista de personajes

  HarryPotterApp({required this.misPersonajes});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harry Potter y el prisionero de Azkaban',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Ruta inicial definida en caso de navegación no especificada
      routes: {
        '/': (context) => HomePage(), // Página de inicio, muestra el contenido de la clase HomePage()
        '/portada': (context) => PortadaView(),
        '/personajes': (context) => PersonajesView(personajes: misPersonajes),
        '/momentos': (context) => MomentosView(),
        '/acerca_de': (context) => AcercaDeView(),
        '/en_mi_vida': (context) => EnMiVidaView(),
        '/contratame': (context) => ContratameView(),
      },
    );
  }
}
