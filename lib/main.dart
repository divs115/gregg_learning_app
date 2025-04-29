import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:collection';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

const tobacco = Color.fromARGB(255, 181, 158, 125);
const vanilla = Color.fromARGB(255, 241, 234, 218);
const mahogany = Color.fromARGB(255, 88, 71, 56);
const mountain = Color.fromARGB(255, 170, 163, 150);
const sand = Color.fromARGB(255, 206, 193, 168);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString(
      'assets/flashcards.json',
    );
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return Container(
      color: tobacco,
      child: Container(
        margin: const EdgeInsets.all(10),
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
          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                _items.isNotEmpty
                    ? Expanded(
                      child: ListView.builder(
                        itemCount: _items.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(20),

                            child: GestureFlipCard(
                              animationDuration: const Duration(
                                milliseconds: 300,
                              ),
                              axis: FlipAxis.vertical,
                              enableController:
                                  false, // if [True] if you need flip the card using programmatically
                              frontWidget: Flipcard(
                                wordList: _items[index],
                                front: true,
                              ),
                              backWidget: Flipcard(
                                wordList: _items[index],
                                front: false,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Flipcard extends StatelessWidget {
  const Flipcard({super.key, required this.wordList, required this.front});

  final wordList;
  final front;

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
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                    child: Text(
                      wordList["front"][0],
                      style: GoogleFonts.kalnia(
                        textStyle: TextStyle(color: vanilla, fontSize: 60),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        flashcardBack(front: front, wordList: wordList),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class flashcardBack extends StatelessWidget {
  const flashcardBack({super.key, required this.front, required this.wordList});

  final wordList;
  final front;

  Widget build(BuildContext context) {
    return this.front
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              this.wordList['words']
                  .map<Widget>(
                    (word) => Text(
                      word,
                      style: GoogleFonts.kreon(
                        textStyle: TextStyle(color: vanilla, fontSize: 15),
                      ),
                    ),
                  )
                  .toList(),
        )
        : Image.asset('assets/${wordList['back']}');
  }
}
