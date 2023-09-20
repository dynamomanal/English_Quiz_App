//Class state  refers to the changes 
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/resultscreen.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions/questions.dart';
//import 'package:google_fonts/google_fonts.dart';
class QuestionsScreen extends StatefulWidget {
 

   const QuestionsScreen({super.key,required this.onSelectAnswer}) ;
 


// A pointer function
   final void Function (String answer) onSelectAnswer; 

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
    currentQuestionIndex += 1;
     int x = Random().nextInt(10);
  int y= Random().nextInt(10);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return   Scaffold(
      backgroundColor: const Color.fromARGB(246, 23, 157, 126),
      body: SizedBox(
        width:double.infinity,
        child: Container(
          margin: const  EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
               Text(
               currentQuestion.text, //Whenever we write a dot notation with any object we can access that property of the object
              style: GoogleFonts.robotoSerif(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                color:const Color.fromARGB(190, 255, 255, 255),
               
                
              ),
              textAlign:TextAlign.center,
               ),

      
              
              const SizedBox(height: 30),
             ...currentQuestion.shuffledAnswers.map(
              (answer)
              {
              return AnswerButton(
                answerText: answer, 
              onTap: () {
                answerQuestion(answer);
              },
              );
             }
             ),
            
            ],
          ),
        ),
      ),
      );

    
  }
}


