import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:math';
import './card.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  final questionsPl = const [
    {'name': 'horse', 'category': 'animal', 'answer': 'Koń'},
    {'name': 'pig', 'category': 'animal', 'answer': 'świnia'},
    {'name': 'bird', 'category': 'animal', 'answer': 'Ptak'},
    {'name': 'lion', 'category': 'animal', 'answer': 'Lew'},
    {'name': 'cat', 'category': 'animal', 'answer': 'Kot'},
    {'name': 'dog', 'category': 'animal', 'answer': 'Pies'},
    {'name': 'rabbit', 'category': 'animal', 'answer': 'Królik'},
    {'name': 'duck', 'category': 'animal', 'answer': 'Kaczka'},
    {'name': 'frog', 'category': 'animal', 'answer': 'żaba'},
    {'name': 'giraffe', 'category': 'animal', 'answer': 'żyrafa'},
    {'name': 'tiger', 'category': 'animal', 'answer': 'Tygrys'},
    {'name': 'monkey', 'category': 'animal', 'answer': 'Nosorożec'},
    {'name': 'chicken', 'category': 'animal', 'answer': 'Kurczak'},
    {'name': 'whale', 'category': 'animal', 'answer': 'Wieloryb'},
    {'name': 'fish', 'category': 'animal', 'answer': 'Ryba'},
    {'name': 'mouse', 'category': 'animal', 'answer': 'Mysz'},
    {'name': 'cockroach', 'category': 'animal', 'answer': 'Karaluch'},
    {'name': 'fly', 'category': 'animal', 'answer': 'Mucha'},
    {'name': 'hedgehog', 'category': 'animal', 'answer': 'Jeż'},
    {'name': 'sloth', 'category': 'animal', 'answer': 'Leniwiec'},
    {'name': 'monkey', 'category': 'animal', 'answer': 'Małpa'},
  ];

  final questions = const [
    {'name': 'horse', 'category': 'animal', 'answer': 'Cavalo'},
    {'name': 'pig', 'category': 'animal', 'answer': 'Porco'},
    {'name': 'bird', 'category': 'animal', 'answer': 'Passaro'},
    {'name': 'lion', 'category': 'animal', 'answer': 'Leão'},
    {'name': 'cat', 'category': 'animal', 'answer': 'Gato'},
    {'name': 'dog', 'category': 'animal', 'answer': 'Cachorro'},
    {'name': 'rabbit', 'category': 'animal', 'answer': 'Coelho'},
    {'name': 'duck', 'category': 'animal', 'answer': 'Pato'},
    {'name': 'frog', 'category': 'animal', 'answer': 'Sapo'},
    {'name': 'giraffe', 'category': 'animal', 'answer': 'Girafa'},
    {'name': 'tiger', 'category': 'animal', 'answer': 'Tigre'},
    {'name': 'rhinoceros', 'category': 'animal', 'answer': 'Rinoceronte'},
    {'name': 'chicken', 'category': 'animal', 'answer': 'Galinha'},
    {'name': 'whale', 'category': 'animal', 'answer': 'Baleia'},
    {'name': 'fish', 'category': 'animal', 'answer': 'Peixe'},
    {'name': 'mouse', 'category': 'animal', 'answer': 'Rato'},
    {'name': 'cockroach', 'category': 'animal', 'answer': 'Barata'},
    {'name': 'fly', 'category': 'animal', 'answer': 'Mosca'},
    {'name': 'Hedgehog', 'category': 'animal', 'answer': 'Porco Espinho'},
    {'name': 'sloth', 'category': 'animal', 'answer': 'Bicho Preguiça'},
    {'name': 'monkey', 'category': 'animal', 'answer': 'Rato'},
  ];

  var questionIndex = 0;
  var questionState = false;

  void answerQuestion() {
    setState(() {
      questionState = !questionState;
      var name = "pt/" + questions[questionIndex]['name'].toString() + ".mp3";
      print(name);
      print(name);
      if (questionState) {
        player.setAsset(name);
        player.play();
      }

      if (!questionState) {
        Random random = new Random();
        questionIndex = random.nextInt(20);
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // const questions = const [
    //   {
    //     'name': 'assets/horse',
    //     'category': 'animal',
    //     'answer': 'Cavalo'
    //   },
    //   {'name': 'pig', 'category': 'animal', 'answer': 'Porco'},
    //   {'name': 'bird', 'category': 'animal', 'answer': 'Passaro'},
    //   {'name': 'lion', 'category': 'animal', 'answer': 'Leão'},
    //   {'name': 'cat', 'category': 'animal', 'answer': 'Gato'},
    //   {'name': 'dog', 'category': 'animal', 'answer': 'Cachorro'},
    //   {'name': 'rabbit', 'category': 'animal', 'answer': 'Coelho'},
    //   {'name': 'duck', 'category': 'animal', 'answer': 'Pato'},
    //   {'name': 'frog', 'category': 'animal', 'answer': 'Sapo'},
    //   {'name': 'giraffe', 'category': 'animal', 'answer': 'Girafa'},
    //   {'name': 'tiger', 'category': 'animal', 'answer': 'Tigre'},
    //   {
    //     'name': 'rhinoceros',
    //     'category': 'animal',
    //     'answer': 'Rinoceronte'
    //   },
    //   {'name': 'chicken', 'category': 'animal', 'answer': 'Galinha'},
    //   {'name': 'whale', 'category': 'animal', 'answer': 'Baleia'},
    //   {'name': 'fish', 'category': 'animal', 'answer': 'Peixe'},
    //   {'name': 'mouse', 'category': 'animal', 'answer': 'Rato'},
    //   {'name': 'cockroach', 'category': 'animal', 'answer': 'Barata'},
    //   {'name': 'fly', 'category': 'animal', 'answer': 'Mosca'},
    //   {
    //     'name': 'Hedgehog',
    //     'category': 'animal',
    //     'answer': 'Porco Espinho'
    //   },
    //   {
    //     'name': 'sloth',
    //     'category': 'animal',
    //     'answer': 'Bicho Preguiça'
    //   },
    //   {'name': 'monkey', 'category': 'animal', 'answer': 'Rato'},
    // ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Movion Language'),
        ),
        body: questionIndex < questions.length
            ? Column(
                children: [
                  LanguageCard(
                    questions[questionIndex]['name'].toString(),
                  ),
                  Answer(
                      answerQuestion,
                      questions[questionIndex]['answer'].toString(),
                      questionState),
                ],
              )
            : Center(
                child: Text('You did it.'),
              ),
      ),
    );
  }
}
