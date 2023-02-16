import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nft_flutter/screens/login.dart';

class ButtonEntrar extends StatelessWidget {
  final dynamic route;
  final String textBtn;
  final String color;

  ButtonEntrar(this.route, this.textBtn, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: Color.fromARGB(255, 202, 88, 150),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        fixedSize: const Size(310, 52),
        backgroundColor: color == 'primary'
            ? Color.fromARGB(255, 202, 88, 150)
            : Colors.white,
      ),
      onPressed: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return route;
        }))
      },
      child: Text(
        textBtn,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: color == 'primary'
                ? Colors.white
                : Color.fromARGB(255, 202, 88, 150)),
      ),
    );
  }
}
