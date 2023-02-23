import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nft_flutter/screens/description.dart';

class Feed extends StatelessWidget {
  List<int> numbers = [0, 1, 2, 3, 4];
  List<String> images = [
    'img-caroulse-1',
    'img-caroulse-2',
    'img-caroulse-3',
    'img-caroulse-4',
    'img-caroulse-5'
  ];
  Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(7, 0, 7, 10),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            iconSize: 20,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 32, 34, 36),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.signal_cellular_alt_2_bar_sharp),
                label: 'Stats',
                backgroundColor: Color.fromARGB(255, 32, 34, 36),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Color.fromARGB(255, 32, 34, 36),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Color.fromARGB(255, 32, 34, 36),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'More',
                backgroundColor: Color.fromARGB(255, 32, 34, 36),
              ),
            ],
            selectedItemColor: Color.fromARGB(255, 58, 130, 247),
            unselectedItemColor: Color.fromARGB(255, 129, 129, 129),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 37, 0, 0),
            child: Image.asset('assets/images/logo-text-top.png'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 25, 5, 0),
            child: CarouselSlider(
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  viewportFraction: 0.4,
                  aspectRatio: 2.6,
                  animateToClosest: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  padEnds: false),
              items: images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Description(image))),
                        child: Hero(
                          tag: 'tag$image',
                          child: Image.asset('assets/images/$image.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
