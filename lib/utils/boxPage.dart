import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxPage extends StatelessWidget {
  Color colorBox ;
  Icon? iconBox;
  String? textBox;
  double widthBox;
  double heightBox;
   BoxPage({super.key , required this.colorBox,  this.iconBox, this.textBox, required this.widthBox, required this.heightBox});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthBox,
      height: heightBox,
      decoration: BoxDecoration(color: colorBox, borderRadius: BorderRadius.circular(5)),
     child:  iconBox == null ? Center(child: Text('$textBox', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),)) : Center(child: iconBox),);
  }
}