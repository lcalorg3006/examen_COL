import 'package:examen_col/screens/home_Screen_col.dart';
import 'package:flutter/material.dart';
import 'package:examen_col/models/models.dart';


class AppRoutes {
  static const initialRoute = 'home';
  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home_max_sharp, name: "Home Screen", screen:const  HomeScreen()),

  ];

  static Map<String, Widget Function(BuildContext)>getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes ={};
    for (final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }/*
      static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }*/
}