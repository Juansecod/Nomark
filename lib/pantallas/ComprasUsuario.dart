///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pantallas/HomeScreen.dart';

final dio = Dio();

Future<List<dynamic>> getDataUser(String email) async {
  const String BASE_URL =
      'https://no-mark-api.azurewebsites.net';
  Response response;
  response = await dio.get('${BASE_URL}/shops', data: {
    'userEmail': email,
  });
  if (response.statusCode == 200) {
    return response.data;
  } else {
    throw Exception('Error al cargar los datos');
  }
}

class ComprasUsuario extends StatelessWidget {
  final email;
  const ComprasUsuario({super.key, this.email});

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
            const Icon(Icons.favorite_border,
                color: Color(0xff212435), size: 24),
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
                    onPressed: () {},
                    child: Center(
                      child: Icon(Icons.shopping_cart,
                          color: Color(0xff212435), size: 24),
                    ))),
          ],
        ),
        body: FutureBuilder(
            future: getDataUser(email),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Center(
                        child: Text(
                      'Ups! Parece que aun no has comprado tus tenis favoritos',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    )));
              }

              List<dynamic>? shops = snapshot.data;

              return GridView.builder(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.9,
                ), // Padding alrededor del grid
                itemCount: shops!.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(shops[index]['image']),
                            height: 100,
                            width: 140,
                            fit: BoxFit.cover,
                          ),
                          Center(
                            child: Text(
                              'Estado pago: ${shops[index]['status']}',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Valor: \$${shops[index]['price'].toString()}',
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                                color: Color.fromARGB(255, 48, 80, 184),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }));
  }
}
