
class Momento {
  final String videoUrl;
  final String titulo;
  final String descripcion;
  final String foto;

  Momento({
    required this.videoUrl,
    required this.titulo,
    required this.descripcion,
    required this.foto,
  });
}

List<Momento> momentos = [
  Momento(
    videoUrl: 'URL_DEL_VIDEO_1',
    titulo: 'Título del Momento 1',
    descripcion: 'Descripción del Momento 1',
    foto: 'URL_DE_LA_FOTO_1',
  ),
  Momento(
    videoUrl: 'URL_DEL_VIDEO_2',
    titulo: 'Título del Momento 2',
    descripcion: 'Descripción del Momento 2',
    foto: 'URL_DE_LA_FOTO_2',
  ),

];

