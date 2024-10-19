import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Inicio extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1333559914.
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 40, right: 60),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                "¿Que vamos a comer hoy?",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 2, color: Color.fromARGB(255, 0, 148, 44))),
              ),
              child: const Text(
                "Mis ingredientes de hoy son",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 148, 44),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.add, color: Colors.white),
                  ),
                  Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2452756103.
                    width: 80,
                    margin: const EdgeInsets.all(10),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2452756103.
                    child: Image.asset("images/img1.png"),
                  ),
                  Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2452756103.
                    width: 80,
                    margin: const EdgeInsets.all(10),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2452756103.
                    child: Image.asset("images/img2.png"),
                  ),
                  Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2452756103.
                    width: 80,
                    margin: const EdgeInsets.all(10),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2452756103.
                    child: Image.asset("images/img3.png"),
                  ),
                ],
              ),
            ),
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          const Color.fromARGB(255, 0, 180, 30))),
                  onPressed: () {},
                  child: const Text(
                    "¡Crear Receta!",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Card(
                color: const Color.fromARGB(255, 255, 3, 3),
                child: Row(children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('images/arroz_con_pollo.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(children: [
                    Container(
                        child: const Text("Arroz con Pollo",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )
                            )
                            ),
                            Container(
                        child: const Text("Ver más",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ))),
                        Container(
                        child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ))
                  ])
                ]),
              ),
            )
          ],
        )),
      ),
    );
  }
}
