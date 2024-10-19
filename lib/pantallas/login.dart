///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';
import 'package:myapp/pantallas/homescreen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: const Color(0x1f000000),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
            ),
            child:

                ///***If you have exported images you must have to copy those images in assets/images directory.
                Image(
              image: const AssetImage("images/fdo_02.jpg"),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "¡Hola de Nuevo!",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 22,
                        color: Color(0xff000000),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        "Login to Continue",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          color: Color(0xffa29b9b),
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      child: Align(
                        alignment: Alignment.center,
                        child:

                            ///***If you have exported images you must have to copy those images in assets/images directory.
                            Image(
                          image: AssetImage("images/logo.png"),
                          height: 120,
                          width: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    TextField(
                      controller:
                          TextEditingController(text: "example@gmail.com"),
                      obscureText: false,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              const BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              const BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide:
                              const BorderSide(color: Color(0xff000000), width: 1),
                        ),
                        labelText: "Email",
                        labelStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xff7c7878),
                        ),
                        hintText: "Enter Text",
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        filled: true,
                        fillColor: const Color(0x00ffffff),
                        isDense: false,
                        contentPadding: const EdgeInsets.all(0),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      child: TextField(
                        controller: TextEditingController(text: "123456"),
                        obscureText: true,
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                const BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                const BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide:
                                const BorderSide(color: Color(0xff000000), width: 1),
                          ),
                          labelText: "Password",
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Color(0xff7c7878),
                          ),
                          hintText: "Enter Text",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          filled: true,
                          fillColor: const Color(0x00ffffff),
                          isDense: false,
                          contentPadding: const EdgeInsets.all(0),
                          suffixIcon: const Icon(Icons.visibility,
                              color: Color(0xff7b7c82), size: 24),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff3a57e8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
                      child: MaterialButton(
                         onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homescreen()),
                            );
                          },
                        color: const Color(0xff3a57e8),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        padding: const EdgeInsets.all(16),
                        textColor: const Color(0xffffffff),
                        height: 50,
                        minWidth: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Comenzar",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homescreen()),
                            );
                          },
                      color: const Color(0x2d3a57e8),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: const EdgeInsets.all(16),
                      textColor: const Color(0xff3a57e8),
                      height: 50,
                      minWidth: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Crea una cuenta",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
