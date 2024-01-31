import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticheckgdscucb/services/db.dart';

import '../../../shared/shared.dart';
import '../widgets/bottomview.dart';
import '../widgets/circprogress.dart';

class WelcomeScroll extends StatefulWidget {
  final dynamic ctrl;
  const WelcomeScroll({super.key, this.ctrl});

  @override
  State<WelcomeScroll> createState() => _WelcomeScrollState();
}

class _WelcomeScrollState extends State<WelcomeScroll> {
  bool isLoad = false;

  void isLoading() {
    setState(() {
      isLoad = !isLoad;
    });
  }

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      primary: true,
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeTransition(
            opacity: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: widget.ctrl,
                curve: Curves.easeInOut,
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: sizeHeight * 0.1,
                left: sizeWidth * 0.1,
                right: sizeWidth * 0.1,
              ),
              child: Column(
                children: [
                  Text(
                    'Bienvenu.e dans',
                    style: GoogleFonts.poppins(
                      color: tdBlackO,
                      fontSize: sizeWidth * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: sizeWidth * 0.5,
                    child: Image.asset(AppImage.logoImg),
                  ),
                  Text(
                    "Une application démo servant de faire un checking des billets pour l'activité de l'info session 2024, conçu par la Team Flutter de la communauté GDSC-UCB pour mettre en avant les différentes performances de Flutter explicité en présentiel dans la dite activité.",
                    style: GoogleFonts.poppins(
                      color: tdBlackO,
                      fontSize: sizeWidth * 0.02,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      isLoading();
                      DBServices().signInWithGoogle();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: sizeHeight * 0.1,
                        left: sizeWidth * 0.08,
                        right: sizeWidth * 0.08,
                      ),
                      height: sizeWidth * 0.06,
                      decoration: BoxDecoration(
                        color: tdYellow,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Connexion',
                        style: GoogleFonts.poppins(
                          color: tdBlack,
                          fontSize: sizeWidth * 0.025,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                  circProgess(sizeWidth, isLoad),
                ],
              ),
            ),
          ),
          bottomView(sizeWidth),
        ],
      ),
    );
  }
}
