import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({Key? key}) : super(key: key);

  Padding _getImage() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Image.network(
        "https://s.glbimg.com/es/sde/f/2022/02/21/82bd262ef647de7255e8df06fdd8e3f2_140x140.png",
        width: 100,
        height: 100,
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
                "Piquerez",
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "LAT",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        "Palmeiras",
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
                  "30",
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
