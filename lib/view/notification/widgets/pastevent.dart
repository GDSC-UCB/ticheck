import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/event.dart';
import '../../../shared/shared.dart';

class PastEvent extends StatelessWidget {
  const PastEvent({super.key});

  void onLaunch(Uri url) async {
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: sizeWidth,
      child: Column(
        children: [
          for (int i = 0; i < events.length; i++) ...{
            Container(
              alignment: Alignment.topLeft,
              width: sizeWidth,
              height: sizeHeight * 0.2,
              padding: EdgeInsets.all(sizeWidth * 0.04),
              margin: EdgeInsets.only(
                top: sizeWidth * 0.02,
                bottom: sizeWidth * 0.05,
              ),
              decoration: BoxDecoration(
                color: tdWhite,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: tdBlack.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: tdBlue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(events[i].photo),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: sizeWidth * 0.325,
                    width: sizeWidth * 0.325,
                    margin: EdgeInsets.only(right: sizeWidth * 0.04),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              events[i].date,
                              style: GoogleFonts.poppins(
                                color: tdBlack,
                                fontSize: sizeWidth * 0.03,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              events[i].title,
                              style: GoogleFonts.poppins(
                                color: tdBlack,
                                fontSize: sizeWidth * 0.03,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          events[i].description,
                          style: GoogleFonts.poppins(
                            color: tdBlack,
                            fontSize: sizeWidth * 0.025,
                            fontWeight: FontWeight.w200,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                        GestureDetector(
                          onTap: () {
                            Uri url = Uri.parse(events[i].lien);
                            onLaunch(url);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_right_alt_rounded,
                                color: tdBlue,
                                size: sizeWidth * 0.04,
                              ),
                              Text(
                                "Voir plus",
                                style: GoogleFonts.poppins(
                                  color: tdBlue,
                                  fontSize: sizeWidth * 0.02,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          },
          GestureDetector(
            onTap: () {
              Uri url = Uri.parse(
                  'https://gdsc.community.dev/universite-catholique-de-bukavu/');
              onLaunch(url);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Explore plus ",
                  style: GoogleFonts.poppins(
                    color: tdBlue,
                    fontSize: sizeWidth * 0.03,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1.5,
                    height: 5,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  color: tdBlue,
                  size: sizeWidth * 0.07,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
