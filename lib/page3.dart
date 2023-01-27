import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:koko/utils/boxPage.dart';

class Page3 extends StatefulWidget {
  Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  double boxHeight = 100;
  double boxWidth = 100;
  double boxHeigh2 = 50;
  double boxWidt2 = 50;
  var boxColor = Color(0xFF673AB7);
  Color boxColor2 = Color(0xFF673AB7);
  double boxX = 0;
  double boxY = 0;

  void _expandBox() {
    setState(() {
      boxHeight = 250;
      boxWidth = 250;
    });
  }

  void _sizedBox() {
    setState(() {
      boxHeight = 100;
      boxWidth = 100;
    });
  }

  void _animcolor() {
    setState(() {
      boxColor = Colors.red;
    });
  }

  void _anim2color() {
    setState(() {
      boxColor = Colors.blue;
    });
  }

  void _move() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  void _move2() {
    setState(() {
      boxX = -1;
      boxY = -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                curve: Curves.ease,
                alignment: Alignment(boxX, boxY), //адресс перемещение
                duration: Duration(seconds: 1),
                
                  child: AnimatedContainer(
                    height: boxHeight,
                    width: boxWidth,
                    decoration: BoxDecoration(
                        color: boxColor,
                        borderRadius: BorderRadius.circular(15)),
                    duration: Duration(seconds: 1),
                  ),
                
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: _expandBox,
                          child: BoxPage(
                            colorBox: boxColor2,
                            iconBox: Icon(Icons.add),
                            heightBox: boxHeigh2,
                            widthBox: boxWidt2,
                          )),
                      GestureDetector(
                          onTap: _animcolor,
                          child: BoxPage(
                            colorBox: boxColor2,
                            textBox: 'red',
                            heightBox: boxHeigh2,
                            widthBox: boxWidt2,
                          )),
                      GestureDetector(
                          onTap: _move,
                          child: BoxPage(
                            colorBox: boxColor2,
                            iconBox: Icon(Icons.chevron_right_sharp),
                            heightBox: boxHeigh2,
                            widthBox: boxWidt2,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: _sizedBox,
                          child: BoxPage(
                            colorBox: boxColor2,
                            iconBox: Icon(Icons.minimize_rounded),
                            heightBox: boxHeigh2,
                            widthBox: boxWidt2,
                          )),
                      GestureDetector(
                          onTap: _anim2color,
                          child: BoxPage(
                            colorBox: boxColor2,
                            // iconBox: Icon(Icons.add),
                            textBox: 'blue',
                            heightBox: boxHeigh2,
                            widthBox: boxWidt2,
                          )),
                      GestureDetector(
                          onTap: _move2,
                          child: BoxPage(
                            colorBox: boxColor2,
                            iconBox: Icon(Icons.keyboard_arrow_left_sharp),
                            heightBox: boxHeigh2,
                            widthBox: boxWidt2,
                          )),
                    ],
                  )
                ],
              )
            ]),
      ),
    );
  }
}
