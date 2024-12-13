import 'package:examen_col/widgets/custom_card_tipo_2.dart';
import 'package:examen_col/theme/app_theme.dart';

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
      
      title: const Text("Flutter App"),
      actions: const [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: const Text('LC'),
            backgroundColor: Colors.lightGreenAccent,
          ),
        )
      ],
      //backgroundColor: Colors.blueAccent,
      elevation: 0,
     ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            
            SizedBox(height: 10),
            CustomCardTipo2(nombre: 'Pista de padel',imageUrl: 'https://urbancolex.com/wp-content/uploads/2022/10/pista-padel-cristal-300x300.png',),
              SizedBox(height: 10),
            CustomCardTipo2(nombre: 'Piscina Cubierta',imageUrl:  'https://portalpro.es/app/uploads/2024/01/piscina-cubierta-en-casa-1200x450.jpg'),
             SizedBox(height: 10),
          
          ],
        ));
  }
}
