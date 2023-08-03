import 'package:flutter/material.dart';

import 'components/my_timeline.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //start timeline
          MyTimeLine(
            isFirst: true,
            isLast: false,
            isPast: true,
            eventCard: Text("ORDER PLACED"),
          ),
          //middle timeline
          MyTimeLine(
            isFirst: false,
            isLast: false,
            isPast: true,
            eventCard: Text("ON THE WAY"),
          ),
          //end timeline
          MyTimeLine(
            isFirst: false,
            isLast: true,
            isPast: true,
            eventCard: Text("ORDER DELIVERED"),
          ),
        ],
      ),
    );
  }
}
