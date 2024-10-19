///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';
import 'package:myapp/pantallas/Menusselect.dart';
import 'package:myapp/pantallas/menu_crudos.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homescreen extends StatelessWidget {
  final pageController = PageController();

  homescreen({super.key});

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
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0x00000000), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0x00000000), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          const BorderSide(color: Color(0x00000000), width: 1),
                    ),
                    hintText: "Search Here..",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    filled: true,
                    fillColor: const Color(0xffebebec),
                    isDense: false,
                    contentPadding: const EdgeInsets.all(8),
                    prefixIcon: const Icon(Icons.search,
                        color: Color(0xff585858), size: 24),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, position) {
                        return Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: InkWell(
                onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => menu_crudos()),
                            );
                          },
                child: Image(
                image: const AssetImage("images/descuento.png"),
                height: 180,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              ),
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: const WormEffect(
                            dotColor: Color(0xff9e9e9e),
                            activeDotColor: Color(0xff3a57e8),
                            dotHeight: 10,
                            dotWidth: 10,
                            radius: 16,
                            spacing: 6,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///***If you have exported images you must have to copy those images in assets/images directory.
              InkWell(
                onTap:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Menusselect()),
                            );
                          },
                child: Image(
                image: const AssetImage("images/crea.png"),
                height: 180,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                child: Text(
                  "Otros usuarios también se inspiraron",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),

              GridView(
                padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const ClampingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.9,
                ),
                children: [
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffe7e7e7),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: const AssetImage("images/usuario1.png"),
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "@nomarkuser",
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff3a57e8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x1f000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: AssetImage("images/usuario1.png"),
                          height: 100,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "@nomarkuser",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff0200ff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x1f000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: AssetImage("images/usuario1.png"),
                          height: 100,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "@nomarkuser",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff0069ff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x1f000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image: AssetImage("images/usuario1.png"),
                          height: 100,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "@nomarkuser",
                          textAlign: TextAlign.start,
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
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child:

                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          Image(
                        image: const AssetImage("images/nomark_shoes2-.jpg"),
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.0, 0.9),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                          border: Border.all(
                              color: const Color(0x4d9e9e9e), width: 1),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Personalizados 15% de descuento",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14,
                                color: Color(0xff3a57e8),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Text(
                                "On Orders Over Rs.2999",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
