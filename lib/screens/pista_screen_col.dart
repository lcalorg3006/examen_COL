import 'package:examen_col/widgets/custom_card_tipo_2.dart';
import 'package:flutter/material.dart';

class PistaScreen extends StatelessWidget {
     final String characterName;
  final String imageUrl;
  final String description;
   
  const PistaScreen({Key? key, required this.characterName, required this.imageUrl, required this.description}) : super(key: key);
  


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
      body: Column(
        children: [
          CustomCardTipo2(
            imageUrl: imageUrl,
            nombre: characterName,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}