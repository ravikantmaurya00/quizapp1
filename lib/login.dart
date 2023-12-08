import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 220, 57),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Quiz Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset("assets/img/quiz.png"),
            SizedBox(
              height: 22,
            ),
            Text(
              "Welcome to Quiz Time App",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 220, 57),
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo[300],
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.white,
              //backgroundImage: AssetImage('asserts/images/avatar.jpg'),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Have Fun!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const QUIZ()),
                );
              },
              child: Text("START QUIZ"),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Log out"),
            ),
          ],
        ),
      ),
    );
  }
}

// Question model
class Question {
  final String question;
  final List<String> options;
  final int answer;

  Question({
    required this.question,
    required this.options,
    required this.answer,
  });
}

class QUIZ extends StatefulWidget {
  const QUIZ({Key? key}) : super(key: key);

  @override
  State<QUIZ> createState() => _QUIZState();
}

class _QUIZState extends State<QUIZ> {
  // List of questions
  final List<Question> questions = [
    Question(
      question:
          'On which date the inauguration of Ram Mandir should take place?',
      options: [
        '3 January 2024',
        '15 January 2024',
        '22 January 2024',
        '23 January 2024'
      ],
      answer: 2, // Index of the correct answer
    ),
    Question(
      question: 'The new  AI model GEMINI is launched by which  company ?',
      options: ['Google', 'Microsoft', 'Flipkart', 'Amazon'],
      answer: 0,
    ),
    Question(
      question:
          'Which state government has decided to set up India first Blockchain District?',
      options: ['Telangana', 'Kerala', 'Andhra Pradesh', 'New Delhi'],
      answer: 0,
    ),
    Question(
      question:
          'What is the name of the world first-ever radio platform powered by artificial intelligence ?',
      options: ['AIRadio', 'Go Radio', 'RadioGPT', 'Radio Bing'],
      answer: 2,
    ),
    Question(
      question:
          'Megha-Tropiques-1 (MTI) satellite was jointly launched by India and which country?',
      options: ['USA', 'Russia', 'Israel', 'France'],
      answer: 3,
    ),
    Question(
      question: 'Which company has launched "Watsonx" AI and data platform?',
      options: ['Google', 'Microsoft', 'IBM', 'Apple'],
      answer: 2,
    ),
    Question(
      question: 'Which Netflix show had the most streaming views in 2021?',
      options: ['Overlord', 'Squid Game', 'My Demon', 'The Crown'],
      answer: 1,
    ),
    Question(
      question: 'What is the largest Spanish-speaking city in the world?',
      options: ['Mexico', 'Barcelona', 'Colombia', 'Santo Domingo'],
      answer: 0,
    ),
    Question(
      question: 'Which is the only body part that is fully grown from birth?',
      options: ['Nose', 'Eye', 'Heart', 'Liver'],
      answer: 1,
    ),
    Question(
      question: 'Which is the only continent with land in all four hemisphere?',
      options: ['Asia', 'Australia', 'North America', 'Africa'],
      answer: 3,
    ),
    Question(
      question:
          'Which institution successfully conducted the test of semi-cryogenic engine?',
      options: ['HAL', 'BHEL', 'ISRO', 'DRDO'],
      answer: 2,
    ),
    Question(
      question:
          'Which country has introduced  a robot called "Kachaka" with  the capacity to dilever items through the voice commands ?',
      options: ['China', 'Japan', 'North Korea', 'South Korea'],
      answer: 1,
    ),
    Question(
      question:
          'What is Mihir, located in National Centre for Medium Range Weather Forecasting(NCMRWF)?',
      options: ['Telescope', 'Super Computer', 'Hygrometer', 'Anemometers'],
      answer: 1,
    ),
    Question(
      question: 'Parker Solar Probe is associated with which space agency?',
      options: ['JAXA', 'ESA', 'NASA', 'ISRO'],
      answer: 2,
    ),
    Question(
      question:
          'What is the name of the closest supermassive black hole  to the Earth?',
      options: ['Tarzan A', 'Sagittarius A', 'Titan A', 'Suzlon A'],
      answer: 1,
    ),
    Question(
      question: 'Naegleria fowleri , affects which part of the body ?',
      options: ['Lungs', 'Brain', 'Liver', 'Intestine'],
      answer: 1,
    ),
    Question(
      question:
          'Scientist have discovered the formation of phosphine in which planet?',
      options: ['Mercury', 'Venus', 'Saturn', 'Mars'],
      answer: 1,
    ),
    Question(
      question: 'Which comet is also reffered as the "Orionid meteor shower?',
      options: [
        "Halley's Comet",
        'Encke Comet',
        'Hyakutake Comet',
        'Hale-Bopp Comet'
      ],
      answer: 0,
    ),
    Question(
      question: 'Ganymede is the largest moon of which planet ?',
      options: ['Jupiter', 'Saturn', 'Mars', 'Mercury'],
      answer: 0,
    ),
    Question(
      question: "What is the name of the world's first robot CEO?",
      options: ['Tina', 'Mika', 'Yo-Yo', 'Harry'],
      answer: 1,
    ),
    // ... Add more questions ...
  ];

  int _currentQuestionIndex = 0; // Current question index
  int _score = 0; // Score

  void _checkAnswer(int optionIndex) {
    if (_currentQuestionIndex < questions.length) {
      if (optionIndex == questions[_currentQuestionIndex].answer) {
        // Correct answer
        _score++;
      } else {
        // Wrong answer
      }
      setState(() {
        _currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestionIndex >= questions.length) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Quiz Completed!'),
              Text('Your score: $_score/${questions.length}'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _currentQuestionIndex = 0;
                    _score = 0;
                  });
                },
                child: Text('Restart Quiz'),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Quit"),
              )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[300],
          title: Text('Quiz Time'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Question ${_currentQuestionIndex + 1}/${questions.length}',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(questions[_currentQuestionIndex].question),
              SizedBox(height: 20.0),
              for (int i = 0;
                  i < questions[_currentQuestionIndex].options.length;
                  i++)
                ElevatedButton(
                  onPressed: () => _checkAnswer(i),
                  child: Text(questions[_currentQuestionIndex].options[i]),
                ),
            ],
          ),
        ),
      );
    }
  }
}
