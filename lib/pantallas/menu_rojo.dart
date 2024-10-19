import 'package:flutter/material.dart';
import 'package:myapp/pantallas/FinalScreen1.dart';
import 'package:myapp/pantallas/menu_amarillo.dart';
import 'package:myapp/pantallas/menu_verde.dart';
import 'package:myapp/pantallas/menu_azul.dart';
import 'package:myapp/pantallas/menu_morado.dart';
import 'package:myapp/pantallas/menu_magenta.dart';


class menu_rojo extends StatelessWidget {
  const menu_rojo({super.key});

 
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
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: 200, 
                decoration: BoxDecoration(
                  color: const Color(0x1fffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image(
                    image: const AssetImage("images/nomark_color1.png"),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.contain, 
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Escoge tu color favorito",
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const menu_rojo()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/Ellipse8.png"),
                          height: 80,  
                          width: 80,   
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const menu_amarillo()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/Ellipse9.png"),
                          height: 80,  
                          width: 80,   
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const menu_verde()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/Ellipse10.png"),
                          height: 80,  
                          width: 80,   
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, 
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const menu_azul()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/Ellipse11.png"),
                          height: 80,  
                          width: 80,   
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const menu_morado()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/Ellipse12.png"),
                          height: 80,  
                          width: 80,   
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const menu_magenta()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/Ellipse13.png"),
                          height: 80,  
                          width: 80,   
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child:Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FinalScreen1()),
                        );
                      },
                      child: const Image(
                        image: AssetImage("images/bt_continuar.png"),
                        height: 100,  // Ajusté el tamaño de altura
                        width: 200,   // Ajusté el tamaño de ancho
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

