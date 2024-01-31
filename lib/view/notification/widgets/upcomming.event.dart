import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/shared.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({super.key});
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
    return Container(
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
              image: const DecorationImage(
                image: NetworkImage(
                  'https://res.cloudinary.com/startup-grind/image/upload/c_fill,w_500,h_500,g_center/c_fill,dpr_2.0,f_auto,g_center,q_auto:good/v1/gcs/platform-data-dsc/events/xweb.png',
                ),
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
                      '20 janv. 2024',
                      style: GoogleFonts.poppins(
                        color: tdBlack,
                        fontSize: sizeWidth * 0.03,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Info Session',
                      style: GoogleFonts.poppins(
                        color: tdBlack,
                        fontSize: sizeWidth * 0.03,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Text(
                  "L'intégration dans le monde numérique avec les communautés de Google",
                  style: GoogleFonts.poppins(
                    color: tdBlack,
                    fontSize: sizeWidth * 0.025,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Uri url = Uri.parse(
                        'https://gdsc.community.dev/events/details/developer-student-clubs-universite-catholique-de-bukavu-presents-info-session/');
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
    );
  }
}
