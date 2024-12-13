
import 'package:examen_col/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:examen_col/router/app_routes.dart';


class ListviewScreen extends StatelessWidget {
   
  const ListviewScreen({Key? key}) : super(key: key);
  
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
      body: ListView.separated(
        itemBuilder:(context, index)=>ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
          }
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.MenuOptions.length,
        ),
      );
    
  }
}