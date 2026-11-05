import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> postre = const {
    'Chocoflan': 'assets/imgs/postre3.jpg',
    'Postre de cafe': 'assets/imgs/postre1.jpg',
    'Chescake': 'assets/imgs/postre2.jpg'
  };

  final conejos = const [
    'Gordito',
    'Junior',
    'Fetuccine',
    'Manchas',
    'Winter',
    'Foster',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...postre.entries.map((postree){
            return _tilePostre(postree.key,
                postree.value,
                Colors.lightBlue, 
                Colors.pinkAccent, 
                Colors.purpleAccent,
            );
          }),
          Divider(),
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
        ],
      ),
    );
  }

  Widget _tilePostre(
    String posName,
    String posImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ) {
    final tile = ListTile(
            leading: Image.asset(posImage, width: 50, height: 60),
            title: Text(posName),
            subtitle: Text('Postres deliciosos'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: tileColor,
            iconColor: iconColor,
            textColor: textColor, 
    );

    final espacio = SizedBox(height: 10);
    return Column(
      children: [
        tile,
        espacio
      ],
    );
  }
}