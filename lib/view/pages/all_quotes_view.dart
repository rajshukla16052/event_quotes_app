import 'package:flutter/material.dart';

class AllQuotesView extends StatefulWidget {
  const AllQuotesView({super.key});

  @override
  State<AllQuotesView> createState() => _AllQuotesViewState();
}

class _AllQuotesViewState extends State<AllQuotesView> {
  final List a =[
    "assets/images/art of life 7.jpg",
    "assets/images/art of life.jpg",
    "assets/images/art of life3.jpg",
    "assets/images/art of life 4.jpg",
    "assets/images/art of life 5.jpg",
    "assets/images/art of life 6.png",
    "assets/images/art of life 7.jpg",
    "assets/images/art of life 4.jpg",
    "assets/images/art of life3.jpg",
    "assets/images/art of life3.jpg",
    "assets/images/art of life 4.jpg",
    "assets/images/art of life 5.jpg",
    "assets/images/art of life 6.png",
    "assets/images/art of life 7.jpg",
    "assets/images/art of life 4.jpg",
    "assets/images/art of life3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
        children: List.generate(a.length, (index) {
          return Card(
            elevation: 20,
            color: Colors.black38,
            child: Image.asset(a[index]
            ),
          );
        }
        ),
      ),
    );
  }
}
