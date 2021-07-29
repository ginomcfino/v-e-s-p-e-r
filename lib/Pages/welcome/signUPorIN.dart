import 'package:flutter/material.dart';
import 'package:vesper/Widgets/primaryButton.dart';
import 'package:vesper/design/constants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            gradient: SweepGradient(colors: [
          Colors.indigo,
          Colors.amber,
          Colors.pinkAccent,
          Colors.indigo
        ])),
      ),
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            child: Column(
              children: [
                Spacer(flex: 2),
                Image.asset(
                  "assets/images/Logo_light.png",
                  height: 146,
                ),
                Spacer(),
                PrimaryButton(text: "Sign IN", press: () => {}),
                SizedBox(height: kDefaultPadding * 1.5),
                PrimaryButton(
                    color: Theme.of(context).colorScheme.secondary,
                    text: "Sign UP",
                    press: () => {}),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
