import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // List<Quiz> quizs = [];
  bool isLoading = false;

  // _fetchQuiz() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   final response =
  //       await http.get('https://drf-quiz-test.herokuapp.com/quiz/3/');
  // }

  // List<Quiz> quizs = [
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  //   Quiz.fromMap({
  //     'title': 'test',
  //     'candidates': ['a', 'b', 'c', 'd'],
  //     'answer': 0
  //   }),
  // ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('My Quiz APP'),
        backgroundColor: Colors.deepPurple,
        leading: Container(),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Image.asset(
              'images/quiz.jpeg',
              width: width * 0.8,
            ))
          ]),
    ));
  }
}
