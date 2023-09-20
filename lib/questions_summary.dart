import 'package:flutter/material.dart';
class QuestionsSummary extends StatelessWidget {
   const QuestionsSummary(this.summaryData, {super.key});
  final List< Map<String,Object >> summaryData;//Name of the property is sumary data which is a list of map with string as keys and values as an object
  @override
  Widget build(BuildContext context) {
//Map simply means that you map a value to a new value
//We can transform a type into another by using map, here we will use list of Map and transform it into a widget by putting it in a container .map(){}this method takes in an argument
//The method have nothing to do with Mao data
    return 
        SizedBox(
          height:300,
          child: SingleChildScrollView(
            child: Column( 
              //Map method is a method in dart which will simply map the values
              children:summaryData.map(
              (data) {
              return Row(
                children: [
                Text( ( (data['questions_index'] as int ) + 1  ).toString() ),
                Expanded(
                  child: 
                  Column(
                    children: [
                   Text(data['questions'] as String),
                    const SizedBox(height: 5,),
                   Text(data['user_answer'] as String),
                // Text(data['correct_answer'] as String ),
                  ],
                  ),
                ),
                  
                ],
              );
              },
              
            ).toList(),
            ),
          ),
        );
    
    
  }
}