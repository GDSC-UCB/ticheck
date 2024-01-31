import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared.dart';

ToastFuture customToast(sizeWidth, sizeHeight, BuildContext context,
    {msg, txtcolor}) {
  return showToastWidget(
    Container(
      width: sizeWidth * 0.25,
      height: sizeHeight * 0.03,
      decoration: BoxDecoration(
        color: tdBlackO,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: txtcolor,
          style: BorderStyle.solid,
          width: 0.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: sizeHeight * 0.02,
            height: sizeHeight * 0.02,
            margin: EdgeInsets.only(right: sizeWidth * 0.015),
            decoration: BoxDecoration(
              color: tdBlackO,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: txtcolor,
                width: 1,
              ),
              image: DecorationImage(
                image: AssetImage(AppImage.logoImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            msg,
            style: GoogleFonts.poppins(
              color: txtcolor,
              fontSize: sizeWidth * 0.02,
              fontWeight: FontWeight.w300,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    ),
    context: context,
    alignment: Alignment.center,
    isIgnoring: false,
  );
}
