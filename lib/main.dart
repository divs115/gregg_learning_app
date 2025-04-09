import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

const tobacco = Color.fromARGB(255, 181, 158, 125);
const vanilla = Color.fromARGB(255, 241, 234, 218);
const mahogany = Color.fromARGB(255, 88, 71, 56);
const mountain = Color.fromARGB(255, 170, 163, 150);
const sand = Color.fromARGB(255, 206, 193, 168);

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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: LearningApp());
  }
}

class LearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: tobacco,
      child: Container(
        width: 380,
        height: 570,
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: sand,
          border: Border.all(color: sand, width: 2.5),
          boxShadow: [
            BoxShadow(
              color: mahogany,
              spreadRadius: 0.5,
              blurRadius: 2,
              offset: Offset(0.5, 0.5),
            ),
          ],
        ),
        child: Scaffold(
          backgroundColor: tobacco,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: tobacco,
            title: Image.asset('assets/logo.png', width: 50),
          ),
          body: Center(child: FlashCardList()),
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
    var wordList = ["two", "three", "four"];

    return Container(
      margin: const EdgeInsets.all(20.0),
      child: GestureFlipCard(
        animationDuration: const Duration(milliseconds: 300),
        axis: FlipAxis.vertical,
        enableController:
            false, // if [True] if you need flip the card using programmatically
        frontWidget: Flipcard(wordList: wordList),
        backWidget: Flipcard(wordList: ['hello']),
      ),
    );
  }
}

class Flipcard extends StatelessWidget {
  const Flipcard({super.key, required this.wordList});

  final List<String> wordList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional(0.1, 0.1),
        children: <Widget>[
          Container(
            width: 245,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: sand,
              boxShadow: [
                BoxShadow(
                  color: mahogany,
                  spreadRadius: 0.5,
                  blurRadius: 7,
                  offset: Offset(1.5, 1.5),
                ),
              ],
            ),
          ),
          Container(
            width: 230,
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: mahogany,
              boxShadow: [BoxShadow(color: mahogany, spreadRadius: 2)],
            ),
            child: Row(
              children: <Widget>[
                flashcardHeading(txt: 'K'),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        for (var i = 0; i < wordList.length; i++)
                          Text(
                            wordList[i],
                            style: GoogleFonts.kreon(
                              textStyle: TextStyle(
                                color: vanilla,
                                fontSize: 15,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                // flashcardSubHeading(list: ['can', 'coal']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class flashcardHeading extends StatelessWidget {
  final txt;
  const flashcardHeading({super.key, this.txt});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
        child: Text(
          this.txt,
          style: GoogleFonts.kalnia(
            textStyle: TextStyle(color: vanilla, fontSize: 60),
          ),
        ),
      ),
    );
  }
}

class flashcardSubHeading extends StatelessWidget {
  final list;
  const flashcardSubHeading({super.key, this.list});

  @override
  Widget build(BuildContext context) {
    return Text("hello");
  }
}

// Flexible(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
//           child: ListView(
//             shrinkWrap: true,
//             children: [
//               Text(
//                 'can',
//                 style: GoogleFonts.kreon(
//                   textStyle: TextStyle(color: vanilla, fontSize: 20),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
