// ignore: file_names
library;

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:myapp/pantallas/HomeScreen.dart';

class PagoScreen extends StatefulWidget {
  static const String routename = 'PagoScreen';
  final String? url =
      "https://sandbox.mercadopago.com.co/checkout/v1/redirect?pref_id=2046553263-2bde7d10-4bdd-43ae-bfc2-1b51e59e86f2";
  const PagoScreen({super.key});

  @override
  State<PagoScreen> createState() => _PagoScreenState();
}

class _PagoScreenState extends State<PagoScreen> {
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(url: Uri.parse("${widget.url}")),
              onUpdateVisitedHistory: (controller, url, androidIsReload) {
                if (url
                    .toString()
                    .contains("https://www.nomark.co/payment/success")) {
                  webViewController?.goBack();
                  //You can do anything
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                  //Prevent that url works
                  return;
                } else if (url
                    .toString()
                    .contains("https://www.nomark.co/payment/failure")) {
                  //You can do anything
                  webViewController?.goBack();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                  //Prevent that url works
                  return;
                } else if (url
                    .toString()
                    .contains("https://www.nomark.co/payment/pending")) {
                  //You can do anything
                  webViewController?.goBack();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
              })
        ],
      ),
    ));
  }
}
