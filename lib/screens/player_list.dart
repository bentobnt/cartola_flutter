import 'package:cartola/components/player_card.dart';
import 'package:flutter/material.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartola'),
        backgroundColor: Colors.orange,
      ),
      body: const ListCards(),
    );
  }
}

class ListCards extends StatelessWidget {
  const ListCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color.fromRGBO(230, 230, 230, 1),
        child: Column(
          children: [
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
            PlayerCard(),
          ],
        ),
      ),
    );
  }
}
