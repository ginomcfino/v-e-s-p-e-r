import 'package:flutter/material.dart';
import 'package:vesper/Widgets/filledButton.dart';
import 'package:vesper/design/constants.dart';

class ChatPBody extends StatelessWidget {
  const ChatPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Row(
        children: [FillOutlineButton(press: () {}, text: "Recent Message")],
      ),
    );
  }
}
