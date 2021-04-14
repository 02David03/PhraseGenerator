import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:  phraseGenerator()
  ));
}

class phraseGenerator extends StatefulWidget {
  @override
  _phraseGeneratorState createState() => _phraseGeneratorState();
}

class _phraseGeneratorState extends State<phraseGenerator> {
  @override
  var _phrase=[
    'frase 1',
    'frase 2',
    'frase 3',
    'frase 4',
    'frase 5'
  ];
  var _initialPhrase = 'Pressione o botão abaixo para gerar uma frase aleatoria';
  void _changeIndex (){
    var indice = Random().nextInt(_phrase.length);
    setState(() {
      _initialPhrase = _phrase[indice];
    });
  }
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,
        ),
        body:Center(child:
        Container( padding: EdgeInsets.all(15),
          child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/logo.png')),
            Text(_initialPhrase,textAlign: TextAlign.justify,style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black38
            )),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: (){
                _changeIndex();
              },
              child:
              Text(
                'Nova Frase', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
              color: Colors.lightGreen,)
            ],
          ),
        ),)
      );
  }
}
