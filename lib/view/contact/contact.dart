import 'package:flutter/material.dart';

import '../../shared/shared.dart';
import 'widgets/bottom.view.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight > sizeWidth) ? sizeHeight / 2 : sizeHeight;
    dynamic size2 = size / 2;
    return Container(
      height: size2 * 0.7,
      color: tdBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size2 * 0.15,
            height: size2 * 0.15,
            margin: EdgeInsets.symmetric(vertical: size2 * 0.1),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(AppImage.gdsclogoImg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: contactView(
              size2,
              (sizeHeight < sizeWidth) ? sizeWidth : sizeHeight,
            ),
          ),
          SizedBox(width: size2 * 0.40),
        ],
      ),
    );
  }
}
