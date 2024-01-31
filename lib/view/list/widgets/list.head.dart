import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../models/user.dart';
import '../../../shared/shared.dart';

class ListHead extends StatelessWidget {
  const ListHead({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic user = Provider.of<User?>(context);
    dynamic users = Provider.of<List<UseR>>(context);
    return SizedBox(
      height: sizeHeight * 0.30,
      width: sizeWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Salut',
            style: GoogleFonts.poppins(
              color: tdYellow,
              fontSize: sizeHeight * 0.02,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            user.displayName,
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: sizeHeight * 0.03,
              fontWeight: FontWeight.normal,
              height: 2,
            ),
          ),
          Text(
            "Bienvenu.e dans cette partie admin.\nTu as la possibilité de voir tous les membres ayant dit présent à l'évènement du jour et t'as une vue sur toutes les notifications du Core Team dans l'onglet notification.",
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: sizeHeight * 0.015,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            "List des membres présents",
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: sizeHeight * 0.025,
              fontWeight: FontWeight.normal,
              height: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Info Session",
                style: GoogleFonts.poppins(
                  color: tdBlackO,
                  fontSize: sizeHeight * 0.018,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
              Text(
                "20 janv. 2024",
                style: GoogleFonts.poppins(
                  color: tdBlackO,
                  fontSize: sizeHeight * 0.013,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Participants : ",
                        style: GoogleFonts.poppins(
                          color: tdBlackO,
                          fontSize: sizeHeight * 0.012,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "48",
                        style: GoogleFonts.poppins(
                          color: tdBlackO,
                          fontSize: sizeHeight * 0.01,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Confirmé : ",
                        style: GoogleFonts.poppins(
                          color: tdBlackO,
                          fontSize: sizeHeight * 0.012,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        '${users.length}',
                        style: GoogleFonts.poppins(
                          color: tdBlackO,
                          fontSize: sizeHeight * 0.01,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
