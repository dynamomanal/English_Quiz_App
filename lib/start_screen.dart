
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/questions/questions.dart';
import 'package:quiz_app/resultscreen.dart';
import 'package:quiz_app/questions_summary.dart';
class BackgroundScreen extends StatefulWidget {
  const BackgroundScreen({Key? key}) : super(key: key);


  @override
  State<BackgroundScreen> createState() => _BackgroundScreenState();
}

class _BackgroundScreenState extends State<BackgroundScreen> {
  //List of Strings to add answers 1st question as 1st answer
   List<String> selectedAnswers =[];
   //here we are making a function for selected answers
  void choosenAnswer(String answer){
  
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length)
    {
      setState(
        () {
      
    Navigator.push(  
    context,  
    MaterialPageRoute(builder: (context) =>   ResultsScreen(choosenAnswers:selectedAnswers,)),  
  );   
        
    }
    );
  }
  }
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
          body:Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors:[
                   Color.fromARGB(204, 52, 221, 193),
                   Color.fromARGB(223, 12, 172, 137),
                   Color.fromARGB(235, 3, 175, 167)
                ]
                )
            ),
          child: SafeArea(
            child: Column(
              children: [
                Image.asset('assets/images/Logo.png'),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>   QuestionsScreen(onSelectAnswer:choosenAnswer)),
                    );
                  },
                  child: const Text('Start Quiz')
                  )
              ],
            ),
          ),
            )
         
        );
  
  }
}