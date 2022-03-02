import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: DecisionMaker(),
      ),
    );

class DecisionMaker extends StatefulWidget {
  const DecisionMaker({Key key}) : super(key: key);

  @override
  _DecisionMakerState createState() => _DecisionMakerState();
}

class _DecisionMakerState extends State<DecisionMaker> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text('8ball',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Ask me anything🤔🤔🤔?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 200, horizontal: 30),
            child: TextButton(
              onPressed: (){
                setState(() {
                  Random random = new Random();
                  imageNumber = random.nextInt(5) + 1;
                  print(imageNumber);
                });
              },
              child: Image.asset('images/ball$imageNumber.png',
                width: 500,
                height: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

