import 'package:flutter/material.dart';

class Qus extends StatelessWidget {
  Qus({
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    required this.answer,
    required this.qnumber,
  });
  int? qnumber;
  String? answer;
  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 6, 33, 57),
      child: ListView(
        children: [
          Image(
            image: AssetImage("images/1.png"),
            height: 200,
            width: 200,
          ),
          Text(
            "Question No.$qnumber",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Container(
            alignment: Alignment.center,
            height: 120,
            child: Text(
              "$qus_text",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white),
            ),
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              height: 50,
              child: Text("$answer_1"),
            ),
            onTap: () {
              if (answer_1 == answer) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("good job"),
                        ),
                      );
                    });
              } else {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("try again"),
                        ),
                      );
                    });
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: Text(
                "$answer_2",
              ),
            ),
            onTap: () {
              if (answer_2 == answer) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("good job"),
                        ),
                      );
                    });
              } else {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("try again"),
                        ),
                      );
                    });
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: Text("$answer_3"),
            ),
            onTap: () {
              if (answer_3 == answer) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("good job"),
                        ),
                      );
                    });
              } else {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("try again"),
                        ),
                      );
                    });
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: Text("$answer_4"),
            ),
            onTap: () {
              if (answer_4 == answer) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("good job"),
                        ),
                      );
                    });
              } else {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Center(
                          child: Text("try again"),
                        ),
                      );
                    });
              }
            },
          ),
        ],
      ),
    );
  }
}
