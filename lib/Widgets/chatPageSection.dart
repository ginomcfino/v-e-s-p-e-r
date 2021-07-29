import 'package:flutter/material.dart';
import 'package:vesper/Widgets/filledButton.dart';
import 'package:vesper/design/constants.dart';

class ChatPBody extends StatelessWidget {
  const ChatPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: kPrimaryColor,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: kDefaultPadding / 4),
          FillOutlineButton(press: () {}, text: "Recent Messages"),
          SizedBox(width: kDefaultPadding / 2),
          FillOutlineButton(
            press: () {},
            text: "Watchlist Discussion",
            isFilled: false,
          ),
          SizedBox(width: kDefaultPadding / 2),
          FillOutlineButton(
            press: () {},
            text: "Announcements",
            isFilled: false,
          ),
          SizedBox(width: kDefaultPadding / 2),
          FillOutlineButton(press: () {}, text: "Q&A"),
          SizedBox(width: kDefaultPadding / 4),
        ],
      ),
    );
  }
}
