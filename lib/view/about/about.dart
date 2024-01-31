import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/shared.dart';
import 'widgets/abouthead.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight > sizeWidth) ? sizeHeight / 2 : sizeHeight;
    return Container(
      height: size,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutHead(),
          Text(
            'Qui sommes-nous ?',
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: size * 0.05,
              fontWeight: FontWeight.normal,
              height: 2,
            ),
          ),
          Text(
            'Nous sommes une communauté des étudiants passionnés par la nouvelle technologie. Nous organisons des sessions, de hackathon, etc dans le but d’accroitre notre connaissance en informatique. Nous créons des solutions numériques aux problèmes de notre communauté locale.',
            style: GoogleFonts.poppins(
              color: tdBlack,
              fontSize: size * 0.028,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
