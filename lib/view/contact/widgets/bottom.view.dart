import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/shared.dart';

Padding contactView(size2, sizeWidth) {
  return Padding(
    padding: EdgeInsets.only(bottom: size2 * 0.01),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Uri url = Uri.parse(
                    'https://gdsc.community.dev/universite-catholique-de-bukavu/');
                onLaunch(url);
              },
              child: Brand(
                Brands.google,
                size: sizeWidth * 0.020,
              ),
            ),
            GestureDetector(
              onTap: () {
                Uri url = Uri.parse('https://twitter.com/gdscucbukavu');
                onLaunch(url);
              },
              child: Icon(
                Bootstrap.twitter_x,
                color: tdWhite,
                size: sizeWidth * 0.020,
              ),
            ),
            GestureDetector(
              onTap: () {
                Uri url = Uri.parse('https://www.instagram.com/gdscucbukavu/');
                onLaunch(url);
              },
              child: Brand(
                Brands.instagram,
                size: sizeWidth * 0.020,
              ),
            ),
            GestureDetector(
              onTap: () {
                Uri url = Uri.parse('https://github.com/GDSC-UCB');
                onLaunch(url);
              },
              child: Icon(
                Bootstrap.github,
                color: tdWhite,
                size: sizeWidth * 0.020,
              ),
            ),
            GestureDetector(
              onTap: () {
                Uri url = Uri.parse(
                    'https://chat.whatsapp.com/ChRDbfO6d2QCu6PUydMGHQ');
                onLaunch(url);
              },
              child: Brand(
                Brands.whatsapp,
                size: sizeWidth * 0.020,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Designated by Flutter Team®',
              style: GoogleFonts.poppins(
                color: tdWhite,
                fontSize: size2 * 0.04,
                fontWeight: FontWeight.w200,
                letterSpacing: 1.5,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '©2024 GDSC-UCB, All rights reserved',
              style: GoogleFonts.poppins(
                color: tdGrey,
                fontSize: size2 * 0.03,
                fontWeight: FontWeight.w200,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    ),
  );
}

void onLaunch(Uri url) async {
  await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  );
}
