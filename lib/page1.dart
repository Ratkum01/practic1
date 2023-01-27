import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});
  final List iconn = [
    Icon(
      Icons.masks_sharp,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.museum,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.music_note,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.face,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.masks_sharp,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.museum,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.music_note,
      color: Colors.white,
      size: 50,
    ),
    Icon(
      Icons.face,
      color: Colors.white,
      size: 50,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Container(
        height: 600,
        child: GridView.builder(
            // physics: NeverScrollableScrollPhysics(), //если включить не можешь скролить
            itemCount: 8,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.deepPurple[200],
                  child: Center(
                      child: AvatarGlow( // много настроек
                    endRadius: 100,
                    child: iconn[index],
                    glowColor: Colors.deepPurple,
                  )),
                ),
              );
            }),
      ),
    );
  }
}
