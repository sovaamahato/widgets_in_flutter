import 'package:flutter/material.dart';


class TinderCard extends StatelessWidget {
  final img;
  TinderCard({required this.img});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          height: 300,
          width: 200,
          child: Image.network(img,fit: BoxFit.cover,),
      
    );
  }
}
