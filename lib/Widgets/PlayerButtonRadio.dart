import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Playerbuttonradio extends StatefulWidget {

  @override
  _PlayerbuttonradioState createState() => _PlayerbuttonradioState();
}

class _PlayerbuttonradioState extends State<Playerbuttonradio> {
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;

  Future<void> _toggleAudio() async{
    if(isPlaying){
      await _player.pause();
      setState(() {
        isPlaying = false;
      });
    }else{
      await _player.play(AssetSource('radio.wav'));
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
      color: Colors.black,
      icon: Icon(isPlaying ? Icons.pause_circle : Icons.play_circle),
      onPressed: _toggleAudio,
    );
  }
}