import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../services/db.dart';
import '../../../shared/shared.dart';

GestureDetector signOutWidget(BuildContext context, sizeHeight, sizeWidth, size) {
  return GestureDetector(
    onTap: () => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: tdRed.withOpacity(0.8),
        content: SizedBox(
          height: sizeWidth * 0.25,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: sizeWidth * 0.02),
                height: sizeWidth * 0.2,
                child: Image.asset(AppImage.emoji),
              ),
              Text(
                'Veux-tu te déconnecter?',
                style: GoogleFonts.poppins(
                  color: tdWhite,
                  fontSize: sizeWidth * 0.02,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => context.pop(),
            child: Text(
              'Annuler',
              style: GoogleFonts.poppins(
                color: tdWhite,
                fontSize: sizeWidth * 0.02,
                fontWeight: FontWeight.w200,
                letterSpacing: 1.5,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              DBServices().signOut();
              context.pop();
            },
            child: Container(
              margin: EdgeInsets.only(left: sizeWidth * 0.02),
              padding: EdgeInsets.symmetric(
                horizontal: sizeWidth * 0.025,
                vertical: sizeWidth * 0.02,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: tdWhite,
                  style: BorderStyle.solid,
                  width: 1,
                ),
              ),
              child: Text(
                'Confirmer',
                style: GoogleFonts.poppins(
                  color: tdWhite,
                  fontSize: sizeWidth * 0.02,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          )
        ],
      ),
    ),
    child: Icon(
      Clarity.sign_out_line,
      size: size * 0.025,
    ),
  );
}
