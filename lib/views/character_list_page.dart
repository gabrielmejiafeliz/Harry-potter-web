import 'package:flutter/material.dart';

class CharacterListPage extends StatefulWidget {
  @override
  _CharacterListPageState createState() => _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {
  List<String> characters = [];

  @override
  void initState() {
    super.initState();
    fetchCharacters();
  }

  Future<void> fetchCharacters() async {
  try {
    // Simulación de carga de datos
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      characters = ['Harry Potter', 'Hermione Granger', 'Ron Weasley'];
    });
  } catch (e) {
    print('Error al obtener los personajes: $e');
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personajes'),
      ),
      body: characters.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(characters[index]),
                  onTap: () {
                    // Navegar a la página de detalles del personaje
                  },
                );
              },
            ),
    );
  }
}
