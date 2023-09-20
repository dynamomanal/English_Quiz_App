import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget {
  const AnswerButton(
    {required this.answerText , 
    required this.onTap,
    super.key
    });
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal:40),
              backgroundColor:const Color.fromARGB(255, 197, 43, 94),
              foregroundColor:const Color.fromARGB(223, 255, 255, 255),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              )
            ),
           onPressed:onTap, 
            child:
           Text(answerText),
            );
  }
}