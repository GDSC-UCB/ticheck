import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../../shared/shared.dart';

class GoToList extends StatefulWidget {
  const GoToList({super.key, this.snackBar});

  final dynamic snackBar;

  @override
  State<GoToList> createState() => _GoToListState();
}

class _GoToListState extends State<GoToList> {
  late String controller;
  List mails = [
    'georgesbyona@gmail.com',
    'mahangobenedict4@gmail.com',
    'augustinnjuci@gmail.com',
    'cirubyakabagurhi.njuci@ucbukavu.ac.cd',
    'benjaminjibu@gmail.com',
    'biringaninedestin@gmail.com',
    'Joelleruk@gmail.com',
    'mariereinebigabwa@gmail.com',
    'akonkwaushindi@gmail.com',
    'jeremiendekemuseremu25@gmail.com',
    'tacite.bahiga@gmail.com',
  ];

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight < sizeWidth) ? sizeWidth : sizeHeight;

    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: tdBlack.withOpacity(0.8),
          content: SizedBox(
            height: sizeWidth * 0.4,
            child: Column(
              children: [
                Icon(
                  CupertinoIcons.exclamationmark_shield,
                  color: tdYellow,
                  size: sizeWidth * 0.1,
                ),
                Text(
                  "Vous êtes sur le point de passer vers la section admin, seuls les membres du 'Core Team' de la communauté peuvent y accéder.",
                  style: GoogleFonts.poppins(
                    color: tdWhite,
                    fontSize: sizeWidth * 0.02,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Veuillez entrer votre mail pour y accéder',
                  style: GoogleFonts.poppins(
                    color: tdWhite,
                    fontSize: sizeWidth * 0.02,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5,
                    height: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.05),
                  child: TextField(
                    autocorrect: false,
                    cursorColor: tdWhite,
                    autofillHints: const <String>[AutofillHints.email],
                    cursorRadius: const Radius.circular(50),
                    onChanged: (value) => controller = value,
                    style: GoogleFonts.poppins(
                      color: tdWhite,
                      fontSize: sizeWidth * 0.03,
                      fontWeight: FontWeight.normal,
                    ),
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
                setState(() {
                  for (String mail in mails) {
                    if (controller == mail) {
                      context.pop();
                      AppVar.isSuccess = true;
                      context.pushNamed(RouteName.list);
                      FocusScope.of(context).requestFocus(FocusNode());
                      break;
                    }
                  }
                });
                customToast(
                  sizeWidth,
                  sizeHeight,
                  context,
                  msg: (AppVar.isSuccess) ? 'Bienvenu.e !' : 'Echec ...',
                  txtcolor: (AppVar.isSuccess) ? tdWhite : tdRed,
                );
                FocusScope.of(context).requestFocus(FocusNode());
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
        MingCute.switch_line,
        size: size * 0.025,
      ),
    );
  }
}
