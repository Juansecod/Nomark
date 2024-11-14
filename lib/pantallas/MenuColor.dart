import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pantallas/ComprasUsuario.dart';
import 'package:myapp/pantallas/FinalScreen.dart';
import 'package:myapp/pantallas/HomeScreen.dart';

class MenuColor extends StatefulWidget {
  @override
  State<MenuColor> createState() => _MenuColorState();
}

class _MenuColorState extends State<MenuColor> {
  Map<String, dynamic> _shoe = {
    'image': '',
    'color': '',
    'price': 0,
  };

  final _email = FirebaseAuth.instance.currentUser?.email;

  @override
  void initState() {
    super.initState();
    setState(() {
      _shoe['image'] = "images/nomark_mokup1.png";
      _shoe['color'] = "Blanco";
      _shoe['price'] = 80000;
    });
  }

  void _setShoe(String image, color, int price) {
    setState(() {
      _shoe['image'] = image;
      _shoe['color'] = color;
      _shoe['price'] = price;
    });
  }

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
                    image: AssetImage(_shoe['image']),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () => _setShoe(
                            "images/nomark_color1.png", 'rojo', 100000),
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
                        onTap: () => _setShoe(
                            "images/nomark_color2.png", 'amarillo', 120000),
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
                        onTap: () => _setShoe(
                            "images/nomark_color3.png", 'verde', 150000),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: InkWell(
                        onTap: () => _setShoe(
                            "images/nomark_color4.png", 'azul', 120000),
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
                        onTap: () => _setShoe(
                            "images/nomark_color5.png", 'morado', 220000),
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
                        onTap: () => _setShoe(
                            "images/nomark_color6.png", 'magenta', 180000),
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
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FinalScreen(shoe: _shoe)),
                      );
                    },
                    child: const Image(
                      image: AssetImage("images/bt_continuar.png"),
                      height: 100, // Ajusté el tamaño de altura
                      width: 200, // Ajusté el tamaño de ancho
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
