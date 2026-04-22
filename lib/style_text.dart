import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Center(
        child: (Text(
          "Hello world",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        )),
      )
    );
  }
}
