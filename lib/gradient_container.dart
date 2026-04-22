import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/dice_roller.dart';
import 'package:flutter_lab3_app/style_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientLiner extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;

  GradientLiner(
    this.color1,
    this.color2,
    this.color3, {
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color3, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
