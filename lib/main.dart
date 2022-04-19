
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
  return runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        // appBar: AppBar(
        //   elevation: 3.0,
        //   title: const Center(child: Text('Dice')),
        //   backgroundColor: Colors.red,
        // ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 1;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 3.0,
          title: const Center(
            child: Text('Dice'),
          )),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: const Image(
                    image: AssetImage('images/screen.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text("Alert"),
                        content: const Text(
                            "My notification alert, get out you fuck"),
                        actions: [
                          CupertinoDialogAction(
                            isDefaultAction: false,
                            child: const Text("Close"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Image(
                    image: AssetImage('images/screen.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 5;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 3.0,
        title: const Center(child: Text('Dice'),)
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () { print('Fredrick'); },
                  child: const Image(
                    image: AssetImage('images/screen.png'),
                  ),
                ),
              ),
            ),
             Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: ElevatedButton(
                  onPressed: () {  },
                  child: const Image(
                    image: AssetImage('images/screen.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
