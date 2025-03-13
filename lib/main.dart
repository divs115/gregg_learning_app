import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        margin: EdgeInsets.all(20), // Margin around the page
        decoration: BoxDecoration(
          color: Colors.blueGrey[50], // Background color
          border: Border.all(
            color: Color.fromARGB(255, 241, 234, 218),
            width: 3,
          ), // Border
          borderRadius: BorderRadius.circular(12),
        ),
        child: Scaffold(
          appBar: AppBar(
            // title: const Text('AppBar Demo'),
            title: Image.asset('assets/logo.png', width: 50),
            backgroundColor: Color.fromARGB(255, 181, 158, 125),
          ),
          body: Center(child: FlashCardList()),
          backgroundColor: Color.fromARGB(255, 181, 158, 125),
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
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(title: Text('K')),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('can'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(title: Text('G')),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('go'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('good'),
                    onPressed: () {
                      /* ... */
                    },
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}



// Container(
//           color: Color.fromARGB(255, 181, 158, 125), // Background color
//           // margin: EdgeInsets.all(20), // Margin around the page
//           // decoration: BoxDecoration(
//           //   color: Colors.blueGrey[50], // Background color
//           //   border: Border.all(color: Colors.black, width: 3), // Border
//           //   borderRadius: BorderRadius.circular(12),
//           // ),
//           child: Text(
//             'This is Google Fonts',
//             style: GoogleFonts.lato(
//               textStyle: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w400,
//                 color: Color.fromARGB(255, 241, 234, 218),
//                 letterSpacing: .5,
//               ),
//             ),
//           ),
//         ),