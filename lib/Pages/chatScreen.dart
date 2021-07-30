import 'package:flutter/material.dart';
import 'package:vesper/Widgets/chatPageSection.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Chats"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded))
        ],
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: Column(
        children: [
          ChatPBody(),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.black),
              child: Text("some t4xt"),
            ),
          )
        ],
      ),
    );
  }
}
