import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/shared.dart';
import 'widgets/pastevent.dart';
import 'widgets/upcomming.event.dart';

class NotificationPage extends StatelessWidget {
  static const route = 'notif';
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Icon(
            CupertinoIcons.multiply,
            size: sizeWidth * 0.06,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: sizeWidth * 0.01),
              height: sizeHeight * 0.03,
              width: sizeHeight * 0.03,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 1,
                  color: tdBlackO,
                ),
                image: DecorationImage(
                  image: AssetImage(AppImage.logoImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: sizeWidth,
        height: sizeHeight,
        child: (sizeHeight < sizeWidth)
            ? RawScrollbar(
                radius: const Radius.circular(100),
                thumbColor: tdGrey.withOpacity(0.5),
                trackColor: tdGrey.withOpacity(0.2),
                thumbVisibility: true,
                trackVisibility: true,
                minThumbLength: 5,
                thickness: 5,
                fadeDuration: const Duration(microseconds: 500),
                child: SingleChildScrollView(
                  primary: true,
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Evènements à venir",
                          style: GoogleFonts.poppins(
                            color: tdBlack,
                            fontSize: sizeHeight * 0.02,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                        ),
                        const UpcomingEvent(),
                        Text(
                          "Evènements passés",
                          style: GoogleFonts.poppins(
                            color: tdBlack,
                            fontSize: sizeHeight * 0.02,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                        ),
                        const PastEvent(),
                      ],
                    ),
                  ),
                ),
              )
            : SingleChildScrollView(
                primary: true,
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Evènements à venir",
                        style: GoogleFonts.poppins(
                          color: tdBlack,
                          fontSize: sizeHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          height: 2,
                        ),
                      ),
                      const UpcomingEvent(),
                      Text(
                        "Evènements passés",
                        style: GoogleFonts.poppins(
                          color: tdBlack,
                          fontSize: sizeHeight * 0.02,
                          fontWeight: FontWeight.normal,
                          height: 2,
                        ),
                      ),
                      const PastEvent(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
