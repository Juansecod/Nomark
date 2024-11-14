/// File download from FlutterViz - Drag and drop a tools.
/// For more details visit https://flutterviz.io/
library;

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:myapp/pantallas/ComprasUsuario.dart';
import 'package:myapp/pantallas/HomeScreen.dart';
//import 'package:myapp/pantallas/CustomTabs.dart';

final dio = Dio();
final user = FirebaseAuth.instance.currentUser;

Future<void> _launchDeepLinkURL(
    BuildContext context, Map<String, dynamic> shoe) async {
  final theme = Theme.of(context);
  const String BASE_URL =
      'https://3000-idx-api-rest-no-mark-1729718476949.cluster-fnjdffmttjhy2qqdugh3yehhs2.cloudworkstations.dev';
  Response responsePayment, responseShop;
  responsePayment = await dio.post('${BASE_URL}/payment', data: {
    'items': [
      {
        'title': "No Mark - Crudo ${shoe['color']}",
        'quantity': 1,
        'unit_price': shoe['price'],
        'currency_id': "COP"
      }
    ]
  });
  responseShop = await dio.post('${BASE_URL}/shops/create', data: {
    ...shoe,
    'paymentId': responsePayment.data['id'],
    'userEmail': user?.email,
  });

  if (responsePayment.statusCode! >= 300 || responseShop.statusCode! >= 300) {
    return;
  }

  String url = responsePayment.data['url'];
  await launchUrl(
    Uri.parse(url),
    prefersDeepLink: true,
    customTabsOptions: CustomTabsOptions(
      colorSchemes: CustomTabsColorSchemes.defaults(
        toolbarColor: theme.colorScheme.surface,
      ),
    ),
    safariVCOptions: SafariViewControllerOptions(
      preferredBarTintColor: theme.colorScheme.surface,
      preferredControlTintColor: theme.colorScheme.onSurface,
    ),
  );
}

class FinalScreen extends StatelessWidget {
  final Map<String, dynamic>? shoe;
  final _email = FirebaseAuth.instance.currentUser?.email;

  FinalScreen({super.key, this.shoe});

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
                  Align(
                    alignment: Alignment(0.7, 0.3),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "¡Brutal!",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Text(
                                // ignore: prefer_interpolation_to_compose_strings
                                "Te luce ese " + shoe?['color'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
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
                            image: AssetImage(shoe?['image']),
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
                      child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => _launchDeepLinkURL(context, shoe!),
                            borderRadius: BorderRadius.zero,
                            child: const Image(
                              image: AssetImage("images/btn_comprar.png"),
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
