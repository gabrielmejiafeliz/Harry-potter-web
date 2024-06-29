import 'package:flutter/material.dart';
import 'package:harry_potter_app/models/personaje.dart'; // Asegúrate de importar el modelo de personaje aquí
import 'detallepersonajeview.dart'; // Asegúrate de importar la vista de detalles del personaje

class PersonajesView extends StatelessWidget {
  final List<Personaje> personajes;

  PersonajesView({required this.personajes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes'),
      ),
      body: GridView.builder(
        itemCount: personajes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Dos imágenes por fila
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.8, // Relación de aspecto de las imágenes
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navegar a la página de detalles del personaje usando MaterialPageRoute
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallePersonajeView(personaje: personajes[index]),
                ),
              );
            },
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                      child: Image.asset(
                        personajes[index].foto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personajes[index].nombre,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          personajes[index].detalles,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
