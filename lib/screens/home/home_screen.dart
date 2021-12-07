import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> frase = [
    'Pense sempre positivo.',
    'Seja bom o tempo todo.',
    'Não importa a situação, mantenha a calma!',
    'Agradeça a Deus por mais um dia, pois Ele é bom.'
  ];
  Random random = Random();


  @override
  void initState(){
    super.initState();
    fraseDay = frase[random.nextInt(frase.length)];
  }

  String fraseDay = '';

  void _randomFrase() {

    setState(() {
      fraseDay = frase[random.nextInt(frase.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Frase do dia'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              fraseDay == ''
                  ? Text('Aperte o botão para ver a frase',
                      style: Theme.of(context).textTheme.bodyText1)
                  : Text('A frase do dia para hoje é:',
                      style: Theme.of(context).textTheme.bodyText1),
              const SizedBox(height: 60),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32,
                  ),
                  child: Text(
                    fraseDay,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _randomFrase();
        },
        child: const Icon(Icons.rotate_right_outlined),
      ),
    );
  }
}
