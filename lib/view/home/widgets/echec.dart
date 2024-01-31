import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../shared/shared.dart';

class EchecDialog extends StatefulWidget {
  const EchecDialog({super.key});

  @override
  State<EchecDialog> createState() => _EchecDialogState();
}

class _EchecDialogState extends State<EchecDialog> {
  String controller = '';

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return AlertDialog(
      backgroundColor: tdBlack.withOpacity(0.8),
      content: SizedBox(
        height: sizeWidth * 0.3,
        child: Column(
          children: [
            Icon(
              CupertinoIcons.exclamationmark_shield_fill,
              color: tdRed,
              size: sizeWidth * 0.1,
            ),
            Text(
              "Oups ! Désolé cette adresse mail n'est pas autorisé de passer vers la section admin.",
              style: GoogleFonts.poppins(
                color: tdWhite,
                fontSize: sizeWidth * 0.02,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.5,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Pour tout souci, faites nous un feedback !',
              style: GoogleFonts.poppins(
                color: tdWhite,
                fontSize: sizeWidth * 0.02,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.5,
                height: 3,
              ),
            ),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
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
            String email = controller;
            final Uri emailLaunchUri = Uri(
              scheme: 'mailto',
              path: 'georgesbyona@gmail.com',
              query: encodeQueryParameters(<String, String>{
                'FeedBack': email,
              }),
            );
            onLaunch(emailLaunchUri);
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
              'Envoyer',
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
    );
  }

  void onLaunch(Uri url) async {
    await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
  }
}
