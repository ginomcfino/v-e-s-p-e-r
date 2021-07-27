// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vesper/Pages/adminDashboard/main/main_screen.dart';
import 'Pages/personalAccount.dart';
import 'controllers/menuController.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vesper - trading made easy",
      theme: ThemeData(fontFamily: 'Circular'),
      home: ProviderScreen(),
      //home: AccountPage(),
    );
  }
}

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: MainScreen(),
    );
  }
}
