import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int notenum) {
    final player = AudioCache();
    player.play('note$notenum.wav');
  }

  Expanded buildKey({Color color, int notenum}) {
    return Expanded(
      child: FlatButton(color: color,
        onPressed: () {
        playSound(notenum);
      },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(color: Colors.red, notenum: 1,),
              buildKey(color: Colors.orange[400], notenum: 2,),
              buildKey(color: Colors.yellow, notenum: 3,),
              buildKey(color: Colors.green, notenum: 4,),
              buildKey(color: Colors.lightBlue, notenum: 5,),
              buildKey(color: Colors.blue[700], notenum: 6,),
              buildKey(color: Colors.purple, notenum: 7,),
            ],
          )),
        ),
      ),
    );
  }
}