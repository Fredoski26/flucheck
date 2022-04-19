import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({Key? key}) : super(key: key);
  @override
  State<AudioPlayer> createState() => _AudioPlayerState();
}

class _AudioPlayerState extends State<AudioPlayer> {
  // void playSound ( int soundNumber){
  //   final players = AudioCache();
  //   players.play('booking_beeps$soundNumber.mp3');
  // }

  Expanded buldKey(){
   return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('booking_beeps.mp3');
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buldKey(),
              buldKey(),
              buldKey(),
              buldKey(),
              buldKey(),
            /*  Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('booking_beeps.mp3');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('booking_beeps.mp3');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('booking_beeps.mp3');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('booking_beeps.mp3');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('booking_beeps.mp3');
                  },
                  child: Text(''),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
