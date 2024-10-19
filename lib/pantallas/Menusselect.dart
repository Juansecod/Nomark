import 'package:flutter/material.dart';
import 'package:myapp/pantallas/menu_color.dart';
import 'package:myapp/pantallas/menu_diseno.dart';


class Menusselect extends StatelessWidget {
  const Menusselect({super.key});

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
            child:
                Icon(Icons.shopping_cart, color: Color(0xff212435), size: 24),
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
              const Align(
                alignment: Alignment(0.7, 0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Bienvenid@",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 22,
                              color: Color(0xff000000),
                            ),
                          ),
                          Text(
                            "Hola Teito",
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Color(0xff212435),
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text(
                  "Escoge una opción de personalización",
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
                alignment: Alignment.center,
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: 150, // Aumento de la altura para mayor espacio
                decoration: BoxDecoration(
                  color: const Color(0x1fffffff),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child:  InkWell(
                onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => menu_color()),
                            );
                          },
                child: Image(
                image: const AssetImage("images/btn_color.png"),
                height: 180,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),
              ),

                      ),
                      Expanded(
                        flex: 1,
                        child:  InkWell(
                onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => menu_diseno()),
                            );
                          },
                child: Image(
                image: const AssetImage("images/btn_diseno.png"),
                height: 180,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),
              ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Image.asset(
                    "images/nomark_mokup.png",
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
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
