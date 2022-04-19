import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('images/screen.png'),
                backgroundColor: Colors.red,
                radius: 50.0,
              ),
              Text(
                "Fredrick",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  letterSpacing: 01.0,
                ),
              ),
              Text(
                "I am coming home",
                style: TextStyle(
                  fontFamily: 'RobotoLight',
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 120.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blue,
                  ),
                  title: Text('+234 344 444 444',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontFamily: 'RobotoLight'
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shadowColor: Colors.red,
                elevation: 2.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blue,
                  ),
                  title: Text('freed@gmail.com',
                    style: TextStyle(
                      fontFamily: 'RobotoLight',
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




