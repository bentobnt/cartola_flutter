import 'package:cartola/components/player_card.dart';
import 'package:cartola/controllers/player_list_controller.dart';
import 'package:cartola/models/player_scaled.dart';
import 'package:flutter/material.dart';

class PlayersList extends StatelessWidget {
  PlayersList({Key? key}) : super(key: key);

  PlayerListController _controller = PlayerListController();
  List<PlayerScaled> listOfPlayers = [];

  @override
  Widget build(BuildContext context) {
    listOfPlayers = _controller.fetchData() as List<PlayerScaled>;
    var nome = listOfPlayers[0].atleta?.apelidoAbreviado;
    return Scaffold(
      appBar: AppBar(
        title: Text(nome ?? ""),
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
