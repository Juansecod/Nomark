/// File download from FlutterViz - Drag and drop a tools.
/// For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';

class FinalScreen6 extends StatelessWidget {
  const FinalScreen6({super.key});

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
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          // Contenedor de imagen de fondo
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: const Color(0x1f000000),
              shape: BoxShape.rectangle,
              border: Border.all(color: const Color(0x4dffffff), width: 1),
            ),
            child: const Image(
              image: AssetImage("images/final.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          // Contenido desplazable
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sección del título
                  const Align(
                    alignment: Alignment(0.7, 0.3),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "¡Brutal!",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                "Hola Teito",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.verified,
                          color: Color(0xff00b405),
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  // Sección de imagen grande
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Image(
                            image: const AssetImage("images/nomark_color6.png"),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Texto de descripción
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Text(
                      "Sin lugar a duda, tus tenis son geniales. Esperamos que luzcas tus nuevos zapatos y lleves a la cima esta marca. ¡Porque la marca sos vos!",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  // Botón de compra
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 18),
                    height: 100,
                    child: Image(
                      image: const AssetImage("images/btn_comprar.png"),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
