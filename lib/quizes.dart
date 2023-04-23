import 'package:e_sinav/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:e_sinav/app.dart';

class Quizes extends StatefulWidget {
  const Quizes({super.key});

  @override
  State<Quizes> createState() => _QuizesState();
}

class _QuizesState extends State<Quizes> {
  @override
  Widget build(BuildContext context) {
    return App.getLayout(context, _buildQuizes() );
  }

Widget _buildQuizes(){
  return ListView.builder(
    padding: EdgeInsets.all(16.0),
    itemBuilder: (context, i){
      if(i<appData.sinavlar.length) {
        return _buildRow(appData.sinavlar[i].adi, i);
      } else 
      return null;
    } 
    );
}

Widget _buildRow(String name, int index){
  return ListTile(
    title: Text(name),
    onTap: () => { onSelQuiz(index) },
  );
}

void onSelQuiz(int i){
      appData.currentQuizIndex = i; 
      Navigator.of(context).pushNamed("/quiz");
}
}