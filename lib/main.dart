import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(dedeApp());
}

class dedeApp extends StatefulWidget {
  const dedeApp({Key? key}) : super(key: key);

  @override
  State<dedeApp> createState() => _dedeAppState();
}

class _dedeAppState extends State<dedeApp> {
  int des1 = Random().nextInt(6) + 1;
  int des2 = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("dede"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          des1 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset("images/dice$des1.png")),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          des2 = Random().nextInt(6) + 1;
                        });
                      },
                      child: Image.asset("images/dice$des2.png")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
