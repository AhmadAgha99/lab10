import 'package:flutter/material.dart';
import 'package:lab_10/Home.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.exit_to_app),
            onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            }),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: TabBar(tabs: [
              Icon(Icons.question_mark_sharp),
              Icon(Icons.question_mark_sharp),
              Icon(Icons.question_mark_sharp),
              Icon(Icons.question_mark_sharp),
              Icon(Icons.question_mark_sharp),
              Icon(Icons.question_mark_sharp),
            ]),
            title: Text("Test"),
            centerTitle: true,
          ),
          body: TabBarView(children: [
            Qus(
                qnumber: 1,
                answer: "favorable",
                answer_1: "painful",
                answer_2: "likely",
                answer_3: "favorable",
                answer_4: "slippery",
                qus_text: "Which is a synonym of propitious?"),
            Qus(
                qnumber: 2,
                answer: "deadly",
                answer_1: "warlike",
                answer_2: "skilful",
                answer_3: "bloody",
                answer_4: "deadly",
                qus_text: "Which is a synonym of pernicious?"),
            Qus(
                qnumber: 3,
                answer: "betrayal",
                answer_1: "custody",
                answer_2: "betrayal",
                answer_3: "quality",
                answer_4: "information",
                qus_text: "Which is a synonym of perfidy?"),
            Qus(
                qnumber: 4,
                answer: "s++",
                answer_1: "c++",
                answer_2: "Pytoh",
                answer_3: "s++",
                answer_4: "dart",
                qus_text:
                    "One of the following is not a progaramming languge:"),
            Qus(
                qnumber: 5,
                answer: "7 continents",
                answer_1: "6 continents",
                answer_2: "7 continents",
                answer_3: "8 continents",
                answer_4: "5 continents",
                qus_text: "How many continents are there in the world?"),
            Qus(
                qnumber: 6,
                answer: "ofcourse",
                answer_1: "Nah!!",
                answer_2: "Not that much",
                answer_3: "Yes",
                answer_4: "ofcourse",
                qus_text: "Have you enjoyed this quizz ?"),
          ]),
        ));
  }
}
