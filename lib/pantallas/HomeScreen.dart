///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';
import 'package:myapp/pantallas/ComprasUsuario.dart';
import 'package:myapp/pantallas/MenuSelect.dart';
import 'package:myapp/pantallas/Login.dart';
import 'package:myapp/pantallas/MenuCrudos.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2089142922.
// ignore: camel_case_types
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageController = PageController();
  String name = "";
  String _email = "";

  @override
  void initState() {
    super.initState();
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final email = user.email;
      setState(() {
        name = email!.split("@")[0];
        _email = email;
      });
    }
  }

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
        future: FirebaseAuth.instance.authStateChanges().first,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData) {
            Future.microtask(() {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ),
              );
            });
            return const SizedBox.shrink();
          }

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
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
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
                  onPressed: () {},
                  child: Center(
                      child: Icon(
                    Icons.home,
                    color: Color(0xff212435),
                    size: 24,
                  ))),
              actions: [
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
                                builder: (context) =>
                                    ComprasUsuario(email: _email)),
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
                    Align(
                      alignment: const Alignment(0.7, 0.3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Text(
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
                                  name,
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.clip,
                                  style: const TextStyle(
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
                            padding: const EdgeInsets.fromLTRB(10, 10, 16, 10),
                            child: ElevatedButton(
                              onPressed: () => _signOut(),
                              style: ElevatedButton.styleFrom(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  backgroundColor:
                                      Colors.red, // Cambia el color de fondo
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(4)), // Hacerlo cuadrado
                                  )),
                              child: const Text(
                                'Cerrar sesión',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuCrudos()),
                        );
                      },
                      child: Image(
                        image: const AssetImage("images/descuento.png"),
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MenuSelect()),
                        );
                      },
                      child: Image(
                        image: const AssetImage("images/crea.png"),
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
