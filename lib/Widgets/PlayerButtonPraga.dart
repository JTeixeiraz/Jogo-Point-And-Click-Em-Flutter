import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Playerbuttonpraga extends StatefulWidget {
  Playerbuttonpraga({Key? key}) : super(key: key);

  @override
  _PlayerbuttonpragaState createState() => _PlayerbuttonpragaState();
}

class _PlayerbuttonpragaState extends State<Playerbuttonpraga> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  Future<void> _toggleAudio() async{
    if(isPlaying){
      await _player.pause();
      setState(() {
        isPlaying = false;
      });
    }else{
      await _player.play(AssetSource('audioreverb.wav'));
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40,
      color: Colors.white,
      icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
      onPressed: _toggleAudio,
    );
  }
}