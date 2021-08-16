import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';


class Display extends StatelessWidget{
  
  final String text;

  Display(this.text);

  @override
  Widget build(BuildContext context) {
    
    return Expanded(//Expande(aumenta) filho que esteja uma linha, coluna ou flex(lembra o space-between)
      flex: 1,
      child: Container(
        color: Color.fromRGBO(40, 42, 54,1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,//Eixo Y
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 80,
                  color: Colors.white,
                )
                ),
            ),
          ],
        ),
      ),
    );
  }

}