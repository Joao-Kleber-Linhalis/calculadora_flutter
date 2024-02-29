import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard({
    super.key,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button.big(cb: cb, color: Button.DARK, text: 'AC'),
            Button(cb: cb,color: Button.DARK, text: '%'),
            Button.operation(cb: cb, text: '/'),
          ]),
          SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(cb: cb, text: '7'),
            Button(cb: cb, text: '8'),
            Button(cb: cb, text: '9'),
            Button.operation(cb: cb, text: 'x'),
          ]),
          SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(cb: cb, text: '4'),
            Button(cb: cb, text: '5'),
            Button(cb: cb, text: '6'),
            Button.operation(cb: cb, text: '-'),
          ]),
          SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(cb: cb, text: '1'),
            Button(cb: cb, text: '2'),
            Button(cb: cb, text: '3'),
            Button.operation(cb: cb, text: '+'),
          ]),
          SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button.big(cb: cb, text: '0'),
            Button(cb: cb, text: '.'),
            Button.operation(cb: cb, text: '='),
          ]),
        ],
      ),
    );
  }
}
