import 'package:flutter/material.dart';
import 'package:lab_10/Home.dart';

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
      color: Colors.white,
      child: ListView(
        children: [
          Image(
            image: AssetImage("images/1.jpg"),
            height: 200,
            width: 200,
          ),
          Text(
            "Question No.$qnumber",
            style: TextStyle(color: Colors.blueAccent, fontSize: 20),
          ),
          Divider(
            color: Colors.blueAccent,
            thickness: 2,
          ),
          Container(
            alignment: Alignment.center,
            height: 80,
            child: Text(
              "$qus_text",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.blueAccent),
            ),
          ),
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              height: 50,
              child: Text(
                "$answer_1",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              child: Text(
                "$answer_2",
                style: TextStyle(fontSize: 25, color: Colors.white),
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              child: Text(
                "$answer_3",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent),
              child: Text(
                "$answer_4",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
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
