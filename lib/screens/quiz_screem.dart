import 'package:flutter/material.dart';
import 'package:quizzz/constants/get_questions.dart';
import 'package:quizzz/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int shownIndex = 0;
  int correctQuestion = 0;
  bool ishShowButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'سوال ${shownIndex + 1} از  ${getQuestions().length}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: Image(
                  image: AssetImage(
                      'images/${getQuestions()[shownIndex].imageNameNumber}.png'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '${getQuestions()[shownIndex].questionTitle}',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold, height: 2),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              ...List.generate(
                4,
                (index) => getListile(index),
              ),
              if (ishShowButton)
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[800],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        minimumSize: Size(350, 50),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ResultScreen(correctQuestion: correctQuestion),
                            ));
                      },
                      child: Text(
                        'مشاهده نتیجه کوییز',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget getListile(int index) {
    return ListTile(
      title: Text(
        '${getQuestions()[shownIndex].answerList![index]}',
        textAlign: TextAlign.end,
        style: TextStyle(fontSize: 18),
      ),
      onTap: () {
        setState(() {
          if (index == getQuestions()[shownIndex].correctAnswer) {
            correctQuestion = correctQuestion + 1;
          }
          if (shownIndex == getQuestions().length - 1) {
            ishShowButton = true;
          }
          if (shownIndex < getQuestions().length - 1) {
            shownIndex++;
          }
        });
      },
    );
  }
}
