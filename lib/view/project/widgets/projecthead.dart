import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/shared.dart';

class ProjectHead extends StatelessWidget {
  const ProjectHead({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight > sizeWidth) ? sizeHeight / 2 : sizeHeight;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Certains de nos projets',
          style: GoogleFonts.poppins(
            color: tdBlack,
            fontSize: size * 0.05,
            fontWeight: FontWeight.normal,
            height: 2,
          ),
        ),
        Text(
          "Nous participons annuellement à l'un des grands challenges mondiaux organisé par Google et cela nous permet d'avoir au moins un projet à présenter à chaque fin d'année sans compter les projets individuels de nos membres ...\nExplorons ensemble ces projets qui soit est en production, soit en construction. Faites nous des feedback pour aider à améliorer ce que nous avons commencer ! Ensemble changeons notre région !",
          style: GoogleFonts.poppins(
            color: tdBlack,
            fontSize: size * 0.025,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
