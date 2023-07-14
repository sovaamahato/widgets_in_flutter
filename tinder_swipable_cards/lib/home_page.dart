import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:tinder_swipable_cards/tinder_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  SwipeableCardSectionController _cardController = SwipeableCardSectionController();

  List ListOfImg=[
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3OB57LjKTpekAVYvEbc8cjFJvzBenrPixSg&usqp=CAU",
  "https://myrepublica.nagariknetwork.com/uploads/media/1540801500_box1_20200205140033.jpg",
  "https://myrepublica.nagariknetwork.com/uploads/media/1540801500_box1_20200205140033.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwipeableCardsSection(
            // cardHeightMiddleMul : 0.3,
            // cardHeightBottomMul: 0.1,
            cardController: _cardController,
            context: context,
            //add the first 3 cards (widgets)
            items: [
              TinderCard(img: "https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/01/14101943/New-Featured-1-3.jpg?tr=w-1200,h-900"),
              TinderCard(img: "https://myrepublica.nagariknetwork.com/uploads/media/1540801500_box1_20200205140033.jpg"),
              TinderCard(img: "https://www.ctvnews.ca/polopoly_fs/1.5036379.1595530668!/httpImage/image.jpg_gen/derivatives/landscape_1020/image.jpg"),
             
              
            ],
            onCardSwiped: (dir, index, widget) {
              //Add the next card using _cardController
              _cardController.addItem(TinderCard(img: ListOfImg[index],));
              
              //Take action on the swiped widget based on the direction of swipe
              //Return false to not animate cards
            },
            enableSwipeUp: true,
            enableSwipeDown: false,)]
      ),
    );
  }
}
