import 'package:cartola/models/player_scaled.dart';
import 'package:dio/dio.dart';

class PlayerListRepository {
  @override
  Future<List<PlayerScaled>> getList() async {
    try {
      var response =
          await Dio().get('https://api.cartola.globo.com/mercado/destaques');
      return (response.data as List)
          .map((e) => PlayerScaled.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }

    return [];
  }
}
