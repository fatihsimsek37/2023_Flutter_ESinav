import 'package:e_sinav/app.dart';
import 'package:e_sinav/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    
    return App.getLayout(context, Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(appData.activeQuestion.desc),
            ElevatedButton(
                child: Text(appData.activeQuestion.cevaplar[0]),
                onPressed: () { onAnswered(appData.activeQuestion.cevaplar[0]);}
            ),
            ElevatedButton(
                child: Text(appData.activeQuestion.cevaplar[1]),
                onPressed: () { onAnswered(appData.activeQuestion.cevaplar[1]);}
            ),
            ElevatedButton(
                child: Text(appData.activeQuestion.cevaplar[2]),
                onPressed: () { onAnswered(appData.activeQuestion.cevaplar[2]);}
            )
          ],
        )));
  }

  void onAnswered(String answer){
setState(() {
  
});
if(appData.currentQuestionIndex<appData.activeQuiz.sorular.length-1)
    appData.currentQuestionIndex++;
else   
      Navigator.of(context).pushNamed("/summary");
}
}
