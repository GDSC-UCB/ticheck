import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ticheckgdscucb/shared/shared.dart';

import '../../../models/user.dart';

class ListViewMembers extends StatefulWidget {
  const ListViewMembers({super.key});

  @override
  State<ListViewMembers> createState() => _ListViewMembersState();
}

class _ListViewMembersState extends State<ListViewMembers> {
  final List mails = [
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
    dynamic user = Provider.of<User?>(context);
    dynamic users = Provider.of<List<UseR>>(context);
    bool coreTeam = false;

    for (String mail in mails) {
      if (user.email == mail) {
        coreTeam = true;
        break;
      }
    }
    return Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: tdWhiteO,
            borderRadius: BorderRadius.circular(20),
          ),
          height: sizeHeight * 0.08,
          margin: EdgeInsets.symmetric(vertical: sizeHeight * 0.01),
          padding: EdgeInsets.symmetric(
            vertical: sizeHeight * 0.01,
            horizontal: sizeHeight * 0.02,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: tdBlue,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage(users[index].photo),
                    fit: BoxFit.cover,
                  ),
                ),
                height: sizeHeight * 0.05,
                width: sizeHeight * 0.05,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    users[index].name,
                    style: GoogleFonts.poppins(
                      color: tdBlackO,
                      fontSize: sizeHeight * 0.012,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    users[index].mail,
                    style: GoogleFonts.poppins(
                      color: tdBlackO,
                      fontSize: sizeHeight * 0.01,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
              Text(
                (coreTeam) ? 'Core Team' : 'Membre',
                style: GoogleFonts.poppins(
                  color: tdBlackO,
                  fontSize: sizeHeight * 0.012,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Icon(
                CupertinoIcons.checkmark_alt_circle_fill,
                color: tdVert,
                size: sizeHeight * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
