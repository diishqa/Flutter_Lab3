import 'package:flutter/material.dart';
import 'package:flutter_lab3_app/style_text.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientLiner extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  var activeDiceImage =
      'assets/images/dice-1.png';
  GradientLiner(
    this.color1,
    this.color2,
    this.color3, {
    super.key,
  });
  void rollDice() {
    activeDiceImage =
        'assets/images.dice-4.png';
    print("Изменили картинку");
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 300,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.only(
                      top: 20,
                    ),
                foregroundColor: Colors.lime,
                textStyle: const TextStyle(
                  fontSize: 30,
                ),
              ),
              child: Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
}
