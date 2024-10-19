import 'package:flutter/material.dart';
import 'package:myapp/pantallas/FinalScreen8.dart';
import 'package:myapp/pantallas/menu_diseno1.dart';
import 'package:myapp/pantallas/menu_diseno3.dart';
import 'package:myapp/pantallas/menu_diseno4.dart';
import 'package:myapp/pantallas/menu_diseno5.dart';
import 'package:myapp/pantallas/menu_diseno6.dart';

class menu_diseno2 extends StatelessWidget {
  const menu_diseno2 ({super.key});

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
                    image: const AssetImage("images/nomark_mokup-3.png"),
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
                            context, MaterialPageRoute(builder: (context) => const menu_diseno1()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/01.png"),
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
                            context, MaterialPageRoute(builder: (context) => const menu_diseno2()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/02.png"),
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
                            context, MaterialPageRoute(builder: (context) => const menu_diseno3()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/03.png"),
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
                            context, MaterialPageRoute(builder: (context) => const menu_diseno4()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/04.png"),
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
                            context, MaterialPageRoute(builder: (context) => const menu_diseno5()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/05.png"),
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
                            context, MaterialPageRoute(builder: (context) => const menu_diseno6()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("images/06.png"),
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
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child:  Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FinalScreen8()),
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

