import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/questions/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
 class ResultsScreen extends StatelessWidget {
    const ResultsScreen({
    super.key, 
    required this.choosenAnswers
   });

    final List<String> choosenAnswers;

    //We are going to add a list of maps to get the summary data
  List<Map<String,Object>> get summaryData{
    final List<Map<String,Object>> summary =[];
    for (var i = 0; i < choosenAnswers.length; i++){
      summary.add({
        'questions_index' : i,
        'questions':questions[i].text,
      //  'correct_answers': questions[i].answers[0],
        'user_answer': choosenAnswers[i]
      },
      );
    }
    return summary;

  }

   @override
   Widget build(BuildContext context) {
  //  final summaryData = summaryData;
    final numTotalQuestions = questions.length;
    //where returns a new list which filters an original list
    final numCorrectQuestions = summaryData.where((data){
      return data['user_answer'] == data['correct_answer'];
    }).length;
     return Scaffold(
      backgroundColor:const Color.fromARGB(246, 23, 157, 126),
      body:SafeArea(
        child: SizedBox(
        width: double.infinity,
      
        child:Center(
        
          child:Column(
             children:[
               Text('You answered $numCorrectQuestions out of $numTotalQuestions questions correctly'),
             const SizedBox(
                height: 30,
              ),
          QuestionsSummary(summaryData),
             
           
            const SizedBox(height:30),
            
              TextButton(
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>   QuestionsScreen( onSelectAnswer: (answer) {
                        
                      },),
                    
                      )
                    );
                },
                child: const Text('Restart Quiz')
                )
            
           ],
          )
        )
        ),
      )
     );
    
    
    
   }
}