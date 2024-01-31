import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../shared/shared.dart';

class AboutHead extends StatelessWidget {
  const AboutHead({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight > sizeWidth) ? sizeHeight / 2 : sizeHeight;
    dynamic user = Provider.of<User?>(context);
    return SizedBox(
      width: sizeWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello !',
            style: GoogleFonts.poppins(
              color: tdGrey,
              fontSize: size * 0.04,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            user.displayName,
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: size * 0.05,
              fontWeight: FontWeight.normal,
              height: 2,
            ),
          ),
          Text(
            "Bienvenu.e dans cette app de démo, ravi de te voir parmi nous en ce jour de l'Info Session...\nEssaie d'explorer et nous faire un feedback via nos contacts en bas de page...\nTon futur n'est pas loin, bonne exploration et merci de confirmer ta place en cliquant sur le bouton check à haut à droite.",
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: size * 0.028,
              fontWeight: FontWeight.w200,
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: size * 0.23,
                child: Image.asset(AppImage.karibu),
              ),
              Text(
                'Karibu !',
                style: GoogleFonts.poppins(
                  color: tdYellow,
                  fontSize: size * 0.05,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
