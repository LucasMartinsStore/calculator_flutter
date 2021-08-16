import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  static const primaryColor = Color.fromRGBO(68, 71, 90, 1);
  static const secondaryColor = Color.fromRGBO(255, 121, 198, 1);
  static const thirdColor = Color.fromRGBO(98, 114, 164, 1);

  final String text;
  final bool duplo;
  final Color color;
  final void Function(String) callBack;

  Button({
    required this.text,
    this.duplo = false,
    this.color = primaryColor,
    required this.callBack, 
    });

  Button.duplo({
    required this.text,
    this.duplo = true,
    this.color = primaryColor,
    required this.callBack, 

    });

    Button.operation({
    required this.text,
    this.duplo = false,
    this.color = secondaryColor,
    required this.callBack, 
    });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: duplo ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200

          ),
          ),
        onPressed: () => callBack(text),
      ),
    );

    
 
  }

}