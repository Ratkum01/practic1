import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatefulWidget {
  Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  late TextStyle _textStyle1;
  Color _backColor = Color.fromRGBO(149, 117, 205, 1);
  @override
  void initState() {
    super.initState();
    _textStyle1 = GoogleFonts.bebasNeue(
        fontSize: 35, fontWeight: FontWeight.bold, color: Colors.deepPurple);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'HELLO',
              style: _textStyle1,
            ),
            Text(
              '@ratkum.kz',
              style: _textStyle1,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (() {
                setState(() {
                  _textStyle1 = GoogleFonts.pressStart2p(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white);
                     _backColor = Color.fromARGB(255, 95, 95, 95); 
                });
              }),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[500],
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: 200,
                child: Center(
                    child: Text(
                  'TAB',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
