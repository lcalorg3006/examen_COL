import 'package:examen_col/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: [
          FlutterLogo(size:100),
          ElevatedButton(onPressed: (){}, 
          child: const Text('Sign in')),
          ElevatedButton(onPressed:(){}, child: const Text('Sign up'))
          ],

      ),
    );
  }
}