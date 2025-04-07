import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

var tobacco = Color.fromARGB(255, 181, 158, 125);
var vanilla = Color.fromARGB(255, 241, 234, 218);
var mahogany = Color.fromARGB(255, 88, 71, 56);
var mountain = Color.fromARGB(255, 170, 163, 150);
var sand = Color.fromARGB(255, 206, 193, 168);

void main() {
  runApp(MyApp());
}

// #B59E7D - Tobacco
// Color.fromARGB(255, 181, 158, 125)

// #F1EADA - Vanilla
// Color.fromARGB(255, 241, 234, 218)

// #584738 - Mahogany
// Color.fromARGB(255, 88, 71, 56)

// #AAA396 - Mountain
// Color.fromARGB(255, 170, 163, 150)

// #CEC1A8 - Sand
//// Color.fromARGB(255, 206, 193, 168)
///

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: tobacco,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tobacco,
            boxShadow: [BoxShadow(color: vanilla, spreadRadius: 2.5)],
          ),
          child: FlashCardList(),
        ),
      ),
    );
  }
}

class FlashCardList extends StatelessWidget {
  const FlashCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Flashcard(),
        Flashcard(),
        Flashcard(),
        Flashcard(),
        Flashcard(),
        Flashcard(),
      ],
    );
  }
}

class Flashcard extends StatelessWidget {
  const Flashcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: GestureFlipCard(
        animationDuration: const Duration(milliseconds: 300),
        axis: FlipAxis.vertical,
        enableController:
            false, // if [True] if you need flip the card using programmatically
        frontWidget: Center(
          child: Stack(
            alignment: AlignmentDirectional(0.1, 0.1),
            children: <Widget>[
              Container(
                width: 280,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: vanilla,
                  boxShadow: [BoxShadow(color: vanilla, spreadRadius: 1)],
                ),
              ),
              Container(
                width: 270,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: mahogany,
                  boxShadow: [BoxShadow(color: mahogany, spreadRadius: 2)],
                ),
              ),
            ],
          ),
        ),
        backWidget: Center(
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tobacco,
              boxShadow: [BoxShadow(color: vanilla, spreadRadius: 2)],
            ),
            child: Text("World"),
          ),
        ),
        // Container(
        //   width: 300,
        //   height: 200,
        //   child: Image.asset('assets/bee.png', fit: BoxFit.contain),
        // ),
      ),
    );
  }
}
