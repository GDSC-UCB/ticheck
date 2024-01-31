import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ticheckgdscucb/models/user.dart';
import 'package:ticheckgdscucb/services/db.dart';

import '../../routes/routes.dart';
import '../../shared/shared.dart';
import '../view.dart';
import 'widgets/gotolist.dart';
import 'widgets/signout.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  IconData check = CupertinoIcons.checkmark_alt_circle;

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight < sizeWidth) ? sizeWidth : sizeHeight;
    dynamic user = Provider.of<User?>(context);
    dynamic users = Provider.of<List<UseR>>(context);
    void onConnectedTap() {
      if (users.length == 0) {
        setState(() {
          check = CupertinoIcons.checkmark_alt_circle_fill;
          DBServices().addNotes(
            UseR(
              id: user.uid,
              name: user.displayName,
              mail: user.email,
              photo: user.photoURL,
            ),
          );
          customToast(
            sizeWidth,
            sizeHeight,
            context,
            msg: 'Success ...',
            txtcolor: tdVert,
          );
        });
      } else {
        for (int i = 0; i < users.length; i++) {
          if (user.email == users[i].mail) {
            setState(() {
              customToast(
                sizeWidth,
                sizeHeight,
                context,
                msg: 'CheckIn',
                txtcolor: tdVert,
              );
              check = CupertinoIcons.checkmark_alt_circle_fill;
            });
            break;
          } else {
            setState(() {
              check = CupertinoIcons.checkmark_alt_circle_fill;
              DBServices().addNotes(
                UseR(
                  id: user.uid,
                  name: user.displayName,
                  mail: user.email,
                  photo: user.photoURL,
                ),
              );
              customToast(
                sizeWidth,
                sizeHeight,
                context,
                msg: 'Success CheckIn',
                txtcolor: tdVert,
              );
            });
          }
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ticheck ',
                  style: GoogleFonts.poppins(
                    color: tdBlack,
                    fontSize: size * 0.02,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  width: size * 0.03,
                  child: Image.asset(AppImage.gdsclogoImg),
                ),
                Text(
                  ' UCB',
                  style: GoogleFonts.poppins(
                    color: tdBlack,
                    fontSize: size * 0.02,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
            SizedBox(
              width:
                  (sizeWidth < sizeHeight) ? sizeWidth * 0.4 : sizeWidth * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => context.pushNamed(RouteName.notif),
                    child: Icon(
                      CupertinoIcons.bell,
                      size: size * 0.025,
                    ),
                  ),
                  const GoToList(),
                  GestureDetector(
                    onTap: () => onConnectedTap(),
                    child: Icon(
                      check,
                      color: tdVert,
                      size: size * 0.025,
                    ),
                  ),
                  signOutWidget(context, sizeHeight, sizeWidth, size),
                ],
              ),
            ),
          ],
        ),
      ),
      body: (sizeHeight > sizeWidth)
          ? const SingleChildScrollView(
              primary: true,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  AboutPage(),
                  ProjectPage(),
                  ContactPage(),
                ],
              ),
            )
          : RawScrollbar(
              radius: const Radius.circular(100),
              thumbColor: tdGrey.withOpacity(0.5),
              trackColor: tdGrey.withOpacity(0.2),
              thumbVisibility: true,
              trackVisibility: true,
              minThumbLength: 5,
              thickness: 5,
              fadeDuration: const Duration(microseconds: 500),
              child: ListView(
                primary: true,
                scrollDirection: Axis.vertical,
                children: const [
                  AboutPage(),
                  ProjectPage(),
                  ContactPage(),
                ],
              ),
            ),
    );
  }
}
