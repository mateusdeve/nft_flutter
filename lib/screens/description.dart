import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String image;

  Description(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Descrição"),
      ),
      body: ListView(
        children: <Widget>[
          Hero(
              transitionOnUserGestures: 1.isEven,
              tag: 'tag$image',
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Image.asset(
                  'assets/images/$image-grande.png',
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
            child: const Text(
                style: TextStyle(fontSize: 18),
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          )
        ],
      ),
    );
  }
}
