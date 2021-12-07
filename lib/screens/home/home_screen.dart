import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Random random = Random();
  String fraseDay = '';
  final List<String> frase = [
    'Agradeça a Deus por mais um dia, pois Ele é bom.'
    'Pense sempre positivo.',
    'Seja bom o tempo todo.',
    'Não importa a situação, mantenha a calma!',
    'Somos todos fruto do meio, o importante é não sucumbir aos erros.',
    'Você é mais forte do que pensa.',
    'O dia hoje será produtivo 🙌',
    'Estudar nem sempre é divertido, mas no final nos leva longe.',
    'Foco e fé são os princípios do sucesso.',
    'Tudo que você precisar, peça a Deus e tenha paciência.',
    'Nunca desista, pois uma vez desistido sempre terá a próxima.',
    'Acredite em você mesmo antes de colocar sua fé em outra pessoa.',
    'Família é tudo!'
  ];

  @override
  void initState() {
    super.initState();
    fraseDay = frase[random.nextInt(frase.length)];
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
              buildCard(context),
            ],
          ),
        ),
      ),
      floatingActionButton: buildFloatingActionButton(),
    );
  }

  Card buildCard(BuildContext context) {
    return Card(
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
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          fraseDay = frase[random.nextInt(frase.length)];
        });
      },
      child: const Icon(Icons.rotate_right_outlined),
    );
  }
}
