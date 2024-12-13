

import 'package:examen_col/models/menu_option_col.dart';
import 'package:examen_col/screens/alert_screen_col.dart';
import 'package:examen_col/screens/monitor_screen.dart';
import 'package:examen_col/screens/pista_screen_col.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'Pista', icon: Icons.home_max_sharp, name: "Pista", screen:const  PistaScreen()),
    MenuOption(route: 'Monitores', icon: Icons.list_alt, name: "monitores", screen:const  MonitorScreen()),
    MenuOption(route: 'resservas', icon: Icons.list, name: "reservas", screen:const  AlertScreen()),


  ];

  static Map<String, Widget Function(BuildContext)>getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes ={};
    for (final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }
      static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(builder: (context) => const AlertScreen());
      }
}