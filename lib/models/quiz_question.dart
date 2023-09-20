
//We will ceate a Class containing the blueprint of our object than we will make object of our class this  means a a data structure logic of our questions screen 
//Model of our data structure 
class QuizQuestion{
  //Creating constructor function inorder to implement the object everytime
  
  final String text;
  final List<String> answers;
 const QuizQuestion(this.text,this.answers);
 //We will make a function named as getShuffledAnswers which will shuffle the answers
 List<String> get shuffledAnswers{
  final shuffledList = List.of(answers);
  shuffledList.shuffle();
  return shuffledList;
 }

}