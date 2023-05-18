import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloScreen(),
    );
  }
}

class HelloScreen extends StatefulWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  Color backgroundColor = Colors.white;

  void changeBackgroundColor() {
    setState(() {
      final random = Random();
      backgroundColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: InkWell(
        onTap: changeBackgroundColor,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Hello There',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Lobster"
                ),
              ),

            ),
            Center(
              child: Text(
                'Click Screen',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade700,
                    fontFamily: "Lobster"
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
