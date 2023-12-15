import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Display(),
    ));

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x23000000),
        appBar: AppBar(
          backgroundColor: Color(0xff3b3535),
          title: Text('Ninja ID Card'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja icon.png'),
                  radius: 50.0,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 3),
              Text(
                'RUSIRU',
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 3),
              Text(
                '$level', // Display the current level
                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'rusiruchapana@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level++;
            });
          },
          child: Icon(
            Icons.add,
          ),
        ));
  }
}
