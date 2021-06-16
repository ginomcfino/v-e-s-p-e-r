import 'package:flutter/material.dart';
import 'package:vesper/main.dart';

class ChatPage extends StatefulWidget {
  final String title;

  ChatPage({Key? key, required this.title}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GROUP CHAT')),
      body: _buildTextComposer(),
      drawer: Navigation(),
    );
  }

  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: InputDecoration.collapsed(hintText: 'Compose a message.'),
        showCursor: true,
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
