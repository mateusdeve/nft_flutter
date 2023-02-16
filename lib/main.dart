import 'package:flutter/material.dart';
import 'package:nft_flutter/components/buttonEntrar.dart';
import 'package:nft_flutter/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset('assets/images/galeryhome.png'),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 56.0, 0, 32.0),
            child: Image.asset('assets/images/logo.png'),
          ),
          const Text(
            "Bem-vindo",
            style: TextStyle(
                fontSize: 28,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 64, 64, 70),
                fontWeight: FontWeight.bold),
          ),
          Container(
            width: 209,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 6, 0, 0),
            child: const Text(
              "Compre, venda, colecione artes únicas.",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 107, 107, 119),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
              children: <Widget>[
                const Text(
                  "By continuing, you agree to Squareo",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 193, 193, 202),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 32),
                  child: Text(
                    "Privacy Policy and Terms of Service",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 193, 193, 202),
                    ),
                  ),
                ),
                ButtonEntrar(Login(), "Entrar", "primary")
              ],
            ),
          )
        ],
      ),
    );
  }
}
