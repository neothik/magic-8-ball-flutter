import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: GetMagic(),
        ),
      ),
    );

class GetMagic extends StatefulWidget {
  @override
  _GetMagicState createState() => _GetMagicState();
}

class _GetMagicState extends State<GetMagic> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue,
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
