import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_example.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/ui/shared/color.dart';
// import 'package:quizz_app/widgets/quizz_widget.dart';
// import 'package:quizz_app/model/question_model.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}

class _QuizzScreenState extends State<QuizzScreen> {
  int questionPos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Next Question";
  bool answered = false;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(183, 93, 94, 91),
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "See Results";
                });
              }
              setState(() {
                answered = false;
              });
            },
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Question ${index + 1}",
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight:FontWeight.bold 
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 200.0,
                      child: Text(
                        "${questions[index].question}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        margin: const EdgeInsets.only(
                            bottom: 20.0, left: 12.0, right: 12.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          fillColor: btnPressed
                              ? questions[index].answers!.values.toList()[i]
                                  ? Color.fromARGB(255, 125, 231, 129)
                                  : Color.fromARGB(255, 250, 73, 60)
                              : Color.fromARGB(255, 169, 231, 240),
                          onPressed: !answered
                              ? () {
                                  if (questions[index]
                                      .answers!
                                      .values
                                      .toList()[i]) {
                                    score++;
                                    // print("yes");
                                  }
                                  setState(() {
                                    btnPressed = true;
                                    answered = true;
                                  });
                                }
                              : null,
                          child: Text(questions[index].answers!.keys.toList()[i],
                              style: const TextStyle(
                                color: Color.fromARGB(255, 12, 12, 12),
                                fontSize: 18.0,
                              )),
                        ),
                      ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        if (_controller!.page?.toInt() == questions.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultScreen(score)));
                        } else {
                          _controller!.nextPage(
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeInExpo);
              
                          setState(() {
                            btnPressed = false;
                          });
                        }
                      },
                      shape: const StadiumBorder(),
                      fillColor: Color.fromARGB(255, 221, 228, 211),
                      padding: const EdgeInsets.all(18.0),
                      elevation: 0.0,
                      child: Text(
                        btnText,
                        style: TextStyle(
                          color: Color.fromARGB(255, 10, 10, 10),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),
                      ),
                    )
                  ],
                );
              
            },
            itemCount: questions.length,
          )),
    );
  }
}
