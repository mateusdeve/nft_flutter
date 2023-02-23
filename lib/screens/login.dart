import 'package:flutter/material.dart';
import 'package:nft_flutter/components/buttonEntrar.dart';
import 'package:nft_flutter/main.dart';
import 'package:nft_flutter/screens/feed.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Image.asset('assets/images/logo-text.png'),
              ),
              Container(
                width: 310,
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuário',
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 165, 165, 179),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: 310,
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Usuário',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 165, 165, 179),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Container(
                width: 310,
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 32),
                child: TextButton(
                    child: const Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () => {}),
              ),
              ButtonEntrar(Feed(), "Entrar", "primary"),
              Container(
                width: 198,
                alignment: Alignment.center,
                child: const Divider(
                  color: Color.fromARGB(255, 193, 193, 202),
                  height: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                child: ButtonEntrar(
                    const Home(), "Entrar com Metamask", "secondary"),
              )
            ],
          )
        ],
      ),
    );
  }
}
