import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myapp/pantallas/HomeScreen.dart';
import 'package:myapp/pantallas/Splash.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No Mark',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        // Capturar los enlaces profundos
        if (settings.name != null) {
          final Uri uri = Uri.parse(settings.name!);
          print(uri);
          // Lógica para manejar deep links
          if (uri.scheme == 'nomarkapp' && uri.host == 'payment') {
            if (uri.path == '/success') {
              return MaterialPageRoute(
                builder: (_) => PaymentSuccessScreen(),
              );
            } else if (uri.path == '/failure') {
              return MaterialPageRoute(
                builder: (_) => PaymentFailureScreen(),
              );
            }
          }
        }

        // Ruta por defecto (si no es un deep link)
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      },
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaymentSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment Success")),
      body: Center(child: Text("Payment Successful!")),
    );
  }
}

class PaymentFailureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payment Failure")),
      body: Center(child: Text("Payment Failed!")),
    );
  }
}
