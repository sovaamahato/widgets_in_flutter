import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:timeline_widget/components/event_card.dart';

class MyTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  MyTimeLine({required this.isFirst,required this.isLast,
  required this.isPast,required this.eventCard});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //gap between events
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        //decorate the lines
    
        beforeLineStyle: LineStyle(color:isPast? Colors.deepPurple:Colors.deepPurple.shade100),
      //decorate the icon
      indicatorStyle: IndicatorStyle(width: 40,
      color: isPast?Colors.deepPurple:Colors.deepPurple.shade100,
      iconStyle: IconStyle(iconData: Icons.done,
      color: isPast?Colors.white:Colors.deepPurple.shade100)
      ),
      //event card

      endChild: EventCard(
        isPast: isPast,
        child: eventCard,

      ),
      ),
    );
  }
}