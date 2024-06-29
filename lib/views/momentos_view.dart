import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/momento.dart';
import 'package:harry_potter_app/widgets/momento_card.dart';
import 'package:harry_potter_app/screens/video_player_screen.dart'; 

class MomentosView extends StatelessWidget {
  final List<Momento> momentos = [
    Momento(
      videoUrl: 'assets/harry_hipogrifo.mp4',
      titulo: 'Harry monta el hipogrifo',
      descripcion:
          'Harry impresiona a todos al montar al hipogrifo, mientras todos pensaban que iba a ser golpeado por este.',
      foto: 'assets/hipogrifo.jpg',
    ),
    Momento(
      videoUrl: 'assets/Dementor_vs_Harry_y_Sirius.mp4',
      titulo: 'Dementor VS Harry y Sirius',
      descripcion:
          'Sirius defiende a harry y sus amigos de un hombre lobo, luego harry se encuentra con sirius desmayado y los atacan los dementores y utiliza su hechizo mas famoso.',
      foto: 'assets/harry vs dementor.jpg',
    ),
    Momento(
      videoUrl: 'assets/harry_y_hermione_salvan_hipogrifo.mp4',
      titulo: 'Harry y Hermione salvan al hipogrifo',
      descripcion:
          'Harry y Hermione viajan al pasado para cambiar el presente y evitar que el hipogrifo sea ejecutado.',
      foto: 'assets/rescate_hipogrifo.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Momentos'),
      ),
      body: ListView.builder(
        itemCount: momentos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(videoUrl: momentos[index].videoUrl),
                ),
              );
            },
            child: MomentoCard(
              titulo: momentos[index].titulo,
              descripcion: momentos[index].descripcion,
              foto: momentos[index].foto,
            ),
          );
        },
      ),
    );
  }
}
