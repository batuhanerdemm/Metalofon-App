import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void PlayNote(int NoteNumber){
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$NoteNumber"));
  }
  Expanded buildKey({required Color color,required int SoundNumber}){
    return Expanded(child:TextButton(
      child: Text(''),
      style:TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: (){
        PlayNote(SoundNumber);
      },

      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red,SoundNumber: 1),
            buildKey(color: Colors.yellow,SoundNumber: 2),
            buildKey(color: Colors.white,SoundNumber: 3),
            buildKey(color: Colors.orangeAccent,SoundNumber: 4),
            buildKey(color: Colors.deepPurple,SoundNumber: 5),
            buildKey(color: Colors.tealAccent,SoundNumber: 6),
            buildKey(color: Colors.lightBlue,SoundNumber: 7),
          ],
        ),
      ),
    );
  }
}



