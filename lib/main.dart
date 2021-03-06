import 'package:flutter/material.dart';


void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*
      Implements the basic material design visual layout structure.
      This class provides APIs for showing drawers and bottom sheets.
      */
      home:Scaffold(
        backgroundColor: Colors.grey.shade900,
        body:SafeArea(
          child: Padding(
            /*
            Typically used for an offset from each of the four sides of a box.
            For example, the padding inside a box can be represented using this class.
            */
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        )
      )
    );
  }
}
 class QuizPage extends StatefulWidget {
   const QuizPage({Key? key}) : super(key: key);

   @override
   State<QuizPage> createState() => _QuizPageState();
 }

 class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [
   
  ];
   @override
   Widget build(BuildContext context) {
     return Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Expanded(
             flex: 5,
             child: Padding(
               padding: EdgeInsets.all(10.0),
               child: Center(
                 child: Text(
                   'This is where the question text will go.',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 25.0,
                     color: Colors.white,
                   ),
                 ),
               ),
             ),
           ),
           Expanded(
             child: Padding(
               padding: EdgeInsets.all(15.0),
               child: FlatButton(
                 textColor: Colors.white,
                 color: Colors.green,
                 child: Text(
                   'True',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 20.0,
                   ),
                 ),
                 onPressed: () {
                   setState(() {
                     scoreKeeper.add(
                         Icon(Icons.check,color: Colors.green,)
                     );
                   });

                 },
               ),
             ),
           ),
           Expanded(
             child: Padding(
               padding: EdgeInsets.all(15.0),
               child: FlatButton(
                 color: Colors.red,
                 child: Text(
                   'False',
                   style: TextStyle(
                     fontSize: 20.0,
                     color: Colors.white,
                   ),
                 ),
                 onPressed: () {
                   //The user picked false.
                 },
               ),
             ),
           ),
           Row(
             children: scoreKeeper,
           )
         ]
     );
   }
 }
