import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numImage = Random().nextInt(15) + 1;
  int numImage1 = Random().nextInt(15) + 1;
  int numImage2 = Random().nextInt(15) + 1;
  int numImage3 = Random().nextInt(15) + 1;

  void changeImage() {
    setState(() {
      numImage = Random().nextInt(15) + 1;
      numImage1 = Random().nextInt(15) + 1;
      numImage2 = Random().nextInt(15) + 1;
      numImage3 = Random().nextInt(15) + 1;
    });
  }

  void displayImage1(){
    setState(() {
      numImage = numImage1;
    });
  }
  void displayImage2(){
    setState(() {
      numImage = numImage2;
    });
  }
  void displayImage3(){
    setState(() {
      numImage = numImage3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(147, 136, 136, 136),
          title: const Text(
            'Images',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Poetsen_One',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  print('The Save Button is Pressed');
                },
                label: Text('Save'),
                icon: Icon(Icons.save_alt),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  changeImage();
                  print('The Generate Button is Pressed');
                },
                label: Text('Generate'),
                icon: Icon(Icons.generating_tokens),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 500,
                width: 500,
                //color: Colors.yellow,
                child: Image.asset('images/image$numImage.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {displayImage1();},
                        child: Card(
                          color: Colors.red,
                          child: Image.asset('images/image$numImage1.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {displayImage2();},
                        child: Card(
                          color: Colors.red,
                          child: Image.asset('images/image$numImage2.jpg'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          displayImage3();
                          print('Pressed');
                        },
                        child: Card(
                          color: Colors.red,
                          child: Image.asset('images/image$numImage3.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
