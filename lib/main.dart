// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'stylesheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vesper - made by GLG",
      theme: buildShrineTheme(),
      home: MyHomePage(title: "VESPER"),
    );
  }
}

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

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text("HOME"),
      ),
      drawer: Navigation(),
    );
  }
}

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink,
            ),
            child: Text('YOUR PROFILE'),
          ),
          ListTile(
            title: Text('Trade'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RandomWords()));
            },
          ),
          ListTile(
            title: Text('Groups'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatPage(title: "Comms")));
            },
          ),
        ],
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() {
    return _RandomWordsState();
  }
}

class _RandomWordsState extends State<RandomWords> {
  final _suggesstions = <WordPair>[];
  final _saved = <WordPair>{};
  final _biggerFont = TextStyle(fontSize: 18.0);
  //dynamic? font = 15;

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(context: context, tiles: tiles).toList()
              : <Widget>[];
          return Scaffold(
              appBar: AppBar(
                title: Text("saved"),
              ),
              body: ListView(children: divided));
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VESPER"),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
      drawer: Navigation(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          if (index >= _suggesstions.length) {
            _suggesstions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggesstions[index]);
        });
  }

  Widget _buildRow(WordPair suggesstion) {
    final alreadySaved = _saved.contains(suggesstion);
    return ListTile(
        title: Text(
          suggesstion.asPascalCase,
          style: _biggerFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : Colors.green,
        ),
        onTap: () {
          setState(() {
            if (alreadySaved) {
              _saved.remove(suggesstion);
            } else {
              _saved.add(suggesstion);
            }
          });
        });
  }
}
