import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pantallas/ComprasUsuario.dart';
import 'package:myapp/pantallas/FinalScreen.dart';
import 'package:myapp/pantallas/HomeScreen.dart';

class MenuCrudos extends StatelessWidget {
  MenuCrudos({super.key});

  final _email = FirebaseAuth.instance.currentUser?.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xfff6f6f6),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "No Mark app",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: Color(0xff000000),
          ),
        ),
        leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(0),
              backgroundColor: const Color(0xfff6f6f6),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Center(
                child: Icon(
              Icons.home,
              color: Color(0xff212435),
              size: 24,
            ))),
        actions: [
          const Icon(Icons.favorite_border, color: Color(0xff212435), size: 24),
          Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    backgroundColor: const Color(0xfff6f6f6),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComprasUsuario(email: _email)),
                    );
                  },
                  child: Center(
                    child: Icon(Icons.shopping_cart,
                        color: Color(0xff212435), size: 24),
                  ))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Escoge tu Crudo favorito",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height:
                    200, // Ajustando la altura para mejorar la visualización
                decoration: BoxDecoration(
                  color: const Color(0x1fffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4dffffff), width: 1),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FinalScreen(shoe: {
                                'image': 'images/nomark_mokup1.png',
                                'color': 'blanco',
                                'price': 80000,
                              })),
                    );
                  },
                  child: const Image(
                    image: AssetImage("images/nomark_mokup.png"),
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: 200, // Ajustando la altura para uniformidad
                decoration: BoxDecoration(
                  color: const Color(0x1fffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4dffffff), width: 1),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FinalScreen(shoe: {
                                'image': 'images/nomark_mokup2.png',
                                'color': 'negro',
                                'price': 80000,
                              })),
                    );
                  },
                  child: const Image(
                    image: AssetImage("images/nomark_mokup2.png"),
                    height: 150,
                    width: 150,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero, // Eliminando el padding
                width: MediaQuery.of(context).size.width,
                height: 80, // Altura del contenedor del botón
                decoration: BoxDecoration(
                  color: const Color(0x1fffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4dffffff), width: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
