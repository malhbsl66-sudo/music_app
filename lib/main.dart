import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Music());
}

class Music extends StatelessWidget {
  void playmusic(int number) {
    final player = AudioPlayer();
    player.play(AssetSource("song$number.mp3"));
  }

  Expanded bo({required int r, required Color l, required String a}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playmusic(r);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(221, 247, 244, 244),
        ),

        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(Icons.music_note, color: l, size: 20.0),
              Text(
                a,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: l,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(252, 177, 228, 153),
        appBar: AppBar(title: Text('نغماتي'), backgroundColor: Colors.green),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            SizedBox(height: 10),
            bo(
              r: 1,
              a: "sound of birds",
              l: const Color.fromARGB(255, 56, 64, 175),
            ),
            SizedBox(height: 10),
            bo(r: 2, a: "old phone", l: const Color.fromARGB(255, 230, 31, 24)),
            SizedBox(height: 10),
            bo(r: 3, a: "Nokia", l: const Color.fromARGB(255, 248, 8, 168)),
            SizedBox(height: 10),
            bo(r: 4, a: "Hip hop", l: const Color.fromARGB(255, 178, 207, 15)),
            SizedBox(height: 10),
            bo(r: 5, a: "piano 11", l: const Color.fromARGB(255, 2, 177, 10)),
            SizedBox(height: 10),
            bo(
              r: 6,
              a: "canary bird chirp",
              l: const Color.fromARGB(255, 102, 67, 2),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
