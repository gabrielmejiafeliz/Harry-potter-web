import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class PortadaView extends StatefulWidget {
  @override
  _PortadaViewState createState() => _PortadaViewState();
}

class _PortadaViewState extends State<PortadaView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/intro.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      allowPlaybackSpeedChanging: false,
      allowFullScreen: false,
      showControlsOnInitialize: false,
      aspectRatio: 16 / 9, // Ajusta el aspecto según tu video
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portada'),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0), // Establecer el fondo 
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Título de la película
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Harry Potter y el prisionero de Azkaban',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Texto en color blanco
                ),
              ),
            ),
          ),
          // Video de introducción (intro.mp4)
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Chewie(controller: _chewieController),
          ),
          // Botones de navegación
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Selecciona una página:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Texto en color blanco
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/personajes');
                      },
                      child: Text('Personajes'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/momentos');
                      },
                      child: Text('Momentos'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/acerca_de');
                      },
                      child: Text('Acerca de'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/en_mi_vida');
                      },
                      child: Text('En mi vida'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/contratame');
                      },
                      child: Text('Contrátame'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

