import 'package:flutter/material.dart';
import 'package:vesper/Widgets/filledButton.dart';
import 'package:vesper/design/constants.dart';

class ChatPBody extends StatelessWidget {
  const ChatPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: kPrimaryColor,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: kDefaultPadding / 4),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: FillOutlineButton(press: () {}, text: "Recent Messages"),
          ),
          SizedBox(width: kDefaultPadding / 2),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: FillOutlineButton(
              press: () {},
              text: "Watchlist Discussion",
              isFilled: false,
            ),
          ),
          SizedBox(width: kDefaultPadding / 2),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: FillOutlineButton(
              press: () {},
              text: "Announcements",
              isFilled: false,
            ),
          ),
          SizedBox(width: kDefaultPadding / 2),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: FillOutlineButton(press: () {}, text: "Q&A"),
          ),
          SizedBox(width: kDefaultPadding / 4),
        ],
      ),
    );
  }
}
