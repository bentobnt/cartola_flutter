import 'package:cartola/models/player_scaled.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerCard extends StatelessWidget {
  PlayerScaled player;

  PlayerCard({Key? key, required this.player}) : super(key: key);

  String replaceImageURL(String url) {
    url = url.replaceAll("FORMATO", "140x140");
    return url;
  }

  Padding _getImage() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Image.network(
        replaceImageURL(player.atleta?.foto ?? ""),
        width: 100,
      ),
    );
  }

  Padding _getPlayerInfo() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                player.atleta?.apelido ?? "",
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      player.posicaoAbreviacao ?? "",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        player.clubeNome ?? "",
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  player.escalacoes.toString() ?? "0",
                  style: GoogleFonts.roboto(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "pessoas escalaram",
                  style: GoogleFonts.roboto(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          _getImage(),
          _getPlayerInfo(),
        ],
      ),
    );
  }
}
