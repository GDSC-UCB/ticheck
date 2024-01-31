import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../services/db.dart';
import '../../../shared/shared.dart';
import '../widgets/bottomview.dart';
import '../widgets/circprogress.dart';

class WelcomeDiv extends StatefulWidget {
  final dynamic ctrl;
  const WelcomeDiv({super.key, this.ctrl});

  @override
  State<WelcomeDiv> createState() => _WelcomeDivState();
}

class _WelcomeDivState extends State<WelcomeDiv> {
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
    return Column(
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
                    fontSize: sizeHeight * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: sizeHeight * 0.5,
                  child: Image.asset(AppImage.logoImg),
                ),
                Text(
                  "Une application démo servant de faire un checking des billets pour l'activité de l'info session 2024, conçu par la Team Flutter de la communauté GDSC-UCB pour mettre en avant les différentes performances de Flutter explicité en présentiel dans la dite activité.",
                  style: GoogleFonts.poppins(
                    color: tdBlackO,
                    fontSize: sizeHeight * 0.02,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () {
                    isLoading();
                    DBServices(context: context).signInWithGoogle();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: sizeHeight * 0.1,
                      left: sizeWidth * 0.08,
                      right: sizeWidth * 0.08,
                    ),
                    height: sizeHeight * 0.06,
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
        bottomView(sizeHeight),
      ],
    );
  }
}
