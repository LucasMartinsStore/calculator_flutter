import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';


class Keyboard extends StatelessWidget{
  final void Function(String) callBack;

  Keyboard(this.callBack);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: <Widget>[
           ButtonRow([
            Button.duplo(text: 'AC', color: Button.thirdColor, callBack: callBack,),
            Button(text: '%', color: Button.thirdColor, callBack: callBack,),
            Button.operation(text: '/', callBack: callBack,),
          ]),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', callBack: callBack,),
            Button(text: '8', callBack: callBack,),
            Button(text: '9', callBack: callBack,),
            Button.operation(text: 'x', callBack: callBack,),
          ]),
          SizedBox(height: 1),
           ButtonRow([
            Button(text: '4', callBack: callBack,),
            Button(text: '5', callBack: callBack,),
            Button(text: '6', callBack: callBack,),
            Button.operation(text: '-', callBack: callBack,),
          ]),
          SizedBox(height: 1),
           ButtonRow([
            Button(text: '1', callBack: callBack,),
            Button(text: '2', callBack: callBack,),
            Button(text: '3', callBack: callBack,),
            Button.operation(text: '+', callBack: callBack,),
          ]),
          SizedBox(height: 1),
            ButtonRow([
            Button.duplo(text: '0', callBack: callBack,),
            Button(text: '.', callBack: callBack,),
            Button.operation(text: '=', callBack: callBack,),
          ]),
        ],
      ),
    );
  }

}