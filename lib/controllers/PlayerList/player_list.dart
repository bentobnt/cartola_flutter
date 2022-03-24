import 'package:cartola/components/player_card.dart';
import 'package:cartola/controllers/PlayerList/player_list_controller.dart';
import 'package:cartola/models/player_scaled.dart';
import 'package:flutter/material.dart';

class PlayersList extends StatefulWidget {
  PlayersList({Key? key}) : super(key: key);

  @override
  State<PlayersList> createState() => _PlayersListState();
}

class _PlayersListState extends State<PlayersList> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 230, 1),
      appBar: AppBar(
        title: const Text("Cartola"),
        backgroundColor: Colors.orange,
      ),
      body: const ListCards(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '+ Escalados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded),
            label: 'Partidas',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ListCards extends StatefulWidget {
  const ListCards({Key? key}) : super(key: key);

  @override
  State<ListCards> createState() => _ListCardsState();
}

class _ListCardsState extends State<ListCards> {
  PlayerListController _controller = PlayerListController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _controller.fetchData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var playersScaledList = data.data as List<PlayerScaled>;
          //color: Color.fromRGBO(230, 230, 230, 1),
          return ListView.builder(
            itemCount: playersScaledList == null ? 0 : playersScaledList.length,
            itemBuilder: (context, index) {
              var player = playersScaledList[index];
              return PlayerCard(
                player: player,
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}


/*

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  

  @override
  Widget build(BuildContext context) {
    
  }
}


*/