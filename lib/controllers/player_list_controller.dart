import 'package:cartola/models/player_scaled.dart';
import 'package:cartola/repositories/player_list_repository.dart';

class PlayerListController {
  PlayerListRepository repository = PlayerListRepository();

  Future<List<PlayerScaled>> fetchData() async {
    List<PlayerScaled> listPlayers = await repository.getList();
    return listPlayers;
  }
}
