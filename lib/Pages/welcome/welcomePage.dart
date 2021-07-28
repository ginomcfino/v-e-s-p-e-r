import 'package:flutter/material.dart';
import 'package:vesper/Controllers/navigationMenu.dart';
import 'package:vesper/design/constants.dart';
import 'package:vesper/Pages/welcome/signUPorIN.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lightGreen, Colors.lightBlue],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Welcome to Vesper!"),
          textTheme: Theme.of(context).textTheme,
          backgroundColor: Colors.transparent,
        ),
        drawer: Navigation(),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Image.asset("assets/images/welcome_image.png"),
                  Spacer(
                    flex: 3,
                  ),
                  Text(
                    "THIS. is VESPER",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "Welcome to the next Genration trading experience! \nSignaling informative interactions!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.64)),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  FittedBox(
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "continue",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color!
                                        .withOpacity(0.8)),
                          ),
                          SizedBox(
                            width: kDefaultPadding / 4,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 16,
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .color!
                                .withOpacity(0.8),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
