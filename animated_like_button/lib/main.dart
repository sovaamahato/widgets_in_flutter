import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 236, 94, 142),
        title:const Text("Animated Like Button"),
      ),
      body: const Center(child: LikeButton(
        size: 95,
      )),),
    );
  }
}
