import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callBack;

  Keyboard(this.callBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: <Widget>[
          ButtonRow([
            Button.dark(text: "AC", callBack: callBack,),
            Button.dark(text: "±", callBack: callBack,),
            Button.dark(text: "%", callBack: callBack,),
            Button.orange(text: "/", callBack: callBack,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button(text: "7", callBack: callBack,),
            Button(text: "8", callBack: callBack,),
            Button(text: "9", callBack: callBack,),
            Button.orange(text: "*", callBack: callBack,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button(text: "4", callBack: callBack,),
            Button(text: "5", callBack: callBack,),
            Button(text: "6", callBack: callBack,),
            Button.orange(text: "-", callBack: callBack,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button(text: "1", callBack: callBack,),
            Button(text: "2", callBack: callBack,),
            Button(text: "3", callBack: callBack,),
            Button.orange(text: "+", callBack: callBack,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button.zero(text: "0", callBack: callBack,),
            Button(text: ".", callBack: callBack,),
            Button.orange(text: "=", callBack: callBack,),
          ]),
        ],
      ),
    );
  }
}
