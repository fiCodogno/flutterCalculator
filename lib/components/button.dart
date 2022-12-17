import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const ORANGE = Color.fromRGBO(250, 158, 13, 1);
  
  final String text;
  final int size;
  final Color color;
  final void Function (String) callBack;

  Button({
    required this.text,
    this.size = 1,
    this.color = DEFAULT,
    required this.callBack,
  });

  Button.zero({
    required this.text,
    this.size = 2,
    this.color = DEFAULT,
    required this.callBack,
  });

  Button.dark({
    required this.text,
    this.size = 1,
    this.color = DARK,
    required this.callBack,
  });

  Button.orange({
    required this.text,
    this.size = 1,
    this.color = ORANGE,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: size,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () => callBack(text),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Helvetica',
            fontWeight: FontWeight.w100,
            decoration: TextDecoration.none,
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
