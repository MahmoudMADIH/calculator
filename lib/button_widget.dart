import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  String digit  ;
  Function onDigitclik ;
  ButtonWidget(this.digit, this.onDigitclik);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          margin: const EdgeInsets.all(4),
          child: ElevatedButton(
            onPressed: (){
              if(widget.digit=="=" ){
                widget.onDigitclik();
              }
               widget.onDigitclik(widget.digit);
            },
            child:
            Text(widget.digit ,
              style: const TextStyle(fontWeight: FontWeight.bold ,fontSize: 25 )
              ,), ),
        ),

    );
  }
}
