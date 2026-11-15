import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> postre = const {
    'Chocoflan': 'assets/imgs/postre3.jpg',
    'Postre de cafe': 'assets/imgs/postre1.jpg',
    'Chescake': 'assets/imgs/postre2.jpg'
  };

  final Map<String, String> conejo = const {
    'Gordito': 'assets/imgs/gordito.png',
    'Chocolate': 'assets/imgs/chocolate.png',
    'Jules': 'assets/imgs/jules.png',
    'Winter': 'assets/imgs/winter.png',
    'Manchas': 'assets/imgs/manchas.png'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...postre.entries.map((postree){
            return _tilePostre(postree.key,
                postree.value,
                const Color.fromARGB(255, 255, 194, 214), 
                const Color.fromARGB(255, 255, 25, 0),
                const Color.fromARGB(255, 3, 63, 244), 
            );
          }),
          Divider(),
          ...conejo.entries.map((conejoo){
            return _tileConejo(conejoo.key,
                conejoo.value,
                const Color.fromARGB(255, 73, 175, 247), 
                const Color.fromARGB(255, 26, 10, 255),
                const Color.fromARGB(255, 228, 233, 227), 
            );
          }),
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


    Widget _tileConejo(
    String posName,
    String posImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ) {
    final tile = ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Image.asset(posImage, width: 50, height: 60),
            subtitle: Text(posName),
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