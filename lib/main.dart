// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'stylesheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vesper",
      theme: buildShrineTheme(),
      home: RandomWords(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   var word = RandomWords();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: word,
//       ),
//       body: Center(child: word),
//     );
//   }
// }

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() {
    return _RandomWordsState();
  }
}

class _RandomWordsState extends State<RandomWords> {
  final _suggesstions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("VESPER")),
      body: _buildSuggestions(),
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
    return ListTile(
      title: Text(
        suggesstion.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
