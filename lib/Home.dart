import 'package:flutter/material.dart';
import './models/functions.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/2.jpg"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Quiz();
                                }));
                              },
                              icon: Icon(Icons.people),
                              label: Text("Go to Quiz page")),
                        ],
                      )),
                    );
                  });
            },
            child: Column(
              children: [
                SizedBox(
                  height: 400,
                ),
                Icon(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 2.0,
                      color: Color.fromARGB(123, 104, 104, 247),
                    ),
                  ],
                  color: Colors.blue,
                  Icons.play_circle,
                  size: 100,
                ),
                Text(
                  "Lets play!",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.blueAccent,
                      fontFamily: "RubikDirt"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
