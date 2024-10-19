import 'package:flutter/material.dart';
import 'package:myapp/pantallas/FinalScreen.dart';
import 'package:myapp/pantallas/FinalScreen0.dart';

class menu_crudos extends StatelessWidget {
  const menu_crudos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffffffff),
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
        leading: const Icon(
          Icons.menu,
          color: Color(0xff212435),
          size: 24,
        ),
        actions: const [
          Icon(Icons.favorite_border, color: Color(0xff212435), size: 24),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Icon(Icons.shopping_cart, color: Color(0xff212435), size: 24),
          ),
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
                height: 200, // Ajustando la altura para mejorar la visualización
                decoration: BoxDecoration(
                  color: const Color(0x1fffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4dffffff), width: 1),
                ),
                child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const FinalScreen()),
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
                            context, MaterialPageRoute(builder: (context) => const FinalScreen0()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/nomark_mokup2.png"),
                          height: 150,  
                          width: 150,   
                          fit: BoxFit.cover,
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
