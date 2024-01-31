import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../shared/shared.dart';

class Notif2 extends StatelessWidget {
  static const route = 'notif2';
  const Notif2({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Icon(
            CupertinoIcons.chevron_back,
            size: sizeWidth * 0.06,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: sizeHeight * 0.1),
        height: sizeHeight,
        width: sizeWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Clarity.hourglass_line,
              size: sizeHeight * 0.05,
            ),
            Text(
              "Pas de notification pour l'instant",
              style: GoogleFonts.poppins(
                color: tdBlackO,
                fontSize: sizeHeight * 0.01,
                fontWeight: FontWeight.normal,
                height: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
