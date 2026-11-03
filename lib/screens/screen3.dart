import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final conejos = const [
    'Gordito',
    'Junior',
    'Fetuccine',
    'Manchas',
    'Winter',
    'Foster',
  ];

  final postres = const [
    'Tarta de frutas',
    'Pastel 3 leches',
    'Pastel de durazno',
    'Pastel de fresa',
    'Fresas con crema',
    'Chocoflan',
    'Tarta de manzana',
    'Hojandra',
    'Rollo de frutas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...conejos.map((conejo)=>ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Text(conejo),
            subtitle: Text('Un conejo maravilloso'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: const Color.fromARGB(255, 101, 186, 255),
            iconColor: const Color.fromARGB(255, 0, 137, 250),
            textColor: const Color.fromARGB(255, 65, 33, 243),
          ),
          ),
          Divider(),
          ...postres.map((postre)=>ListTile(
            leading: Icon(Icons.food_bank),
            title: Text(postre),
            subtitle: Text('Postres deliciosos'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: const Color.fromARGB(255, 248, 185, 206),
            iconColor: const Color.fromARGB(255, 250, 32, 105),
            textColor: const Color.fromARGB(255, 243, 33, 177), 
          ),
          ),
        ],
      ),
    );
  }
}