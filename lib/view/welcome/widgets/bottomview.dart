import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/shared.dart';

Container bottomView(sizeWidth) {
  return Container(
    color: tdBlack,
    height: sizeWidth * 0.2,
    width: sizeWidth,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Designated by Flutter Team®',
          style: GoogleFonts.poppins(
            color: tdWhite,
            fontSize: sizeWidth * 0.015,
            fontWeight: FontWeight.normal,
            letterSpacing: 1.5,
            height: 2.5,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          '©2024 GDSC-UCB, All rights reserved',
          style: GoogleFonts.poppins(
            color: tdGrey,
            fontSize: sizeWidth * 0.012,
            fontWeight: FontWeight.w300,
            height: 2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
