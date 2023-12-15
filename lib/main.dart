import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Display(),
    ));

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x23000000),
      appBar: AppBar(
        backgroundColor: Color(0xff3b3535),
        title: Text('Ninja ID Card'),
        centerTitle: true,
      ),
    );
  }
}
