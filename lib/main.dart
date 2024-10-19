import 'package:flutter/material.dart';
import 'package:myapp/pantallas/menu_azul.dart';
import 'package:myapp/pantallas/menu_magenta.dart';
import 'package:myapp/pantallas/menu_morado.dart';
import 'package:myapp/pantallas/splash.dart';
import 'package:myapp/pantallas/login.dart';
import 'package:myapp/pantallas/homescreen.dart';
import 'package:myapp/pantallas/menu_color.dart';
import 'package:myapp/pantallas/menu_rojo.dart';
import 'package:myapp/pantallas/menu_azul.dart';
import 'package:myapp/pantallas/menu_amarillo.dart';
import 'package:myapp/pantallas/menu_verde.dart';
import 'package:myapp/pantallas/menu_morado.dart';
import 'package:myapp/pantallas/menu_diseno.dart';
import 'package:myapp/pantallas/menu_diseno1.dart';
import 'package:myapp/pantallas/menu_diseno2.dart';
import 'package:myapp/pantallas/menu_diseno3.dart';
import 'package:myapp/pantallas/menu_diseno4.dart';
import 'package:myapp/pantallas/menu_diseno5.dart';
import 'package:myapp/pantallas/menu_diseno6.dart';
import 'package:myapp/pantallas/menu_crudos.dart';
import 'package:myapp/pantallas/FinalScreen.dart';
import 'package:myapp/pantallas/FinalScreen0.dart';
import 'package:myapp/pantallas/FinalScreen1.dart';
import 'package:myapp/pantallas/FinalScreen2.dart';
import 'package:myapp/pantallas/FinalScreen3.dart';
import 'package:myapp/pantallas/FinalScreen4.dart';
import 'package:myapp/pantallas/FinalScreen5.dart';
import 'package:myapp/pantallas/FinalScreen6.dart';
import 'package:myapp/pantallas/FinalScreen7.dart';
import 'package:myapp/pantallas/FinalScreen8.dart';
import 'package:myapp/pantallas/FinalScreen9.dart';
import 'package:myapp/pantallas/FinalScreen10.dart';
import 'package:myapp/pantallas/FinalScreen11.dart';
import 'package:myapp/pantallas/FinalScreen12.dart';
import 'package:myapp/pantallas/Menusselect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: splash());
    return MaterialApp(home: Login());
    //return MaterialApp(home: homescreen());
    //return MaterialApp(home: menu_color());
    //return MaterialApp(home: menu_rojo());
    //return MaterialApp(home: menu_amarillo());
    //return MaterialApp(home: menu_verde());
    //return MaterialApp(home: menu_azul());
    //return MaterialApp(home: menu_morado());
    //return MaterialApp(home: menu_magenta());
    //return MaterialApp(home: menu_diseno());
    //return MaterialApp(home: menu_diseno1());
    //return MaterialApp(home: menu_diseno2());
    //return MaterialApp(home: menu_diseno3());
    //return MaterialApp(home: menu_diseno4());
    //return MaterialApp(home: menu_diseno5());
    //return MaterialApp(home: menu_diseno6());
    //return MaterialApp(home: menu_crudos());
    //return MaterialApp(home: FinalScreen());
    //return MaterialApp(home: FinalScreen0());
    //return MaterialApp(home: FinalScreen1());
    //return MaterialApp(home: FinalScreen2());
    //return MaterialApp(home: FinalScreen3());
    //return MaterialApp(home: FinalScreen4());
    //return MaterialApp(home: FinalScreen5());
    //return MaterialApp(home: FinalScreen6());
    //return MaterialApp(home: FinalScreen7());
    //return MaterialApp(home: FinalScreen8());
    //return MaterialApp(home: FinalScreen9());
    //return MaterialApp(home: FinalScreen10());
    //return MaterialApp(home: FinalScreen11());
    //return MaterialApp(home: FinalScreen12());
    //return MaterialApp(home: Menusselect());
   
    

  
  }
}

class InicioAlterno extends StatelessWidget {
  const InicioAlterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('inicio'),
      ),
      body: const Center(
        child: Text('Bienvenido a la aplicación!'),
      ),
    );
  }
}