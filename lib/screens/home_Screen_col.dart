import 'package:examen_col/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Column(
        children: [
          FlutterLogo(size:100),
          ],

      ),
      floatingActionButton: FloatingActionButton(
       /* onPressed:() =>{
      Navigator.pushNamed( AppRoutes.MenuOptions[index].route);        },
       */ onPressed: () {  },
       child: const Text('Sign in'),
        
       // floatingActionButton: FloatingActionButton
        /*(onPressed: (){

        }*/ /**child: Text('Sign up'),*/)
    );
  }
}