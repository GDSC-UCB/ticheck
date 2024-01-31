import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/project.dart';
import '../../../shared/shared.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  bool isRate = false;

  void isRated() {
    setState(() {
      isRate = !isRate;
    });
  }

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
    dynamic size = (sizeHeight > sizeWidth) ? sizeHeight / 2 : sizeHeight;
    return Expanded(
      child: ListView.builder(
        itemCount: project.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          width: size * 0.6,
          height: size * 0.6,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(project[index].photo),
              fit: BoxFit.cover,
            ),
          ),
          margin: EdgeInsets.only(
            top: sizeHeight * 0.02,
            right: sizeHeight * 0.02,
            bottom: sizeHeight * 0.02,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      tdBlack.withOpacity(0.6),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: (const [0.3, 1.0]),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                height: sizeHeight,
                margin: EdgeInsets.symmetric(
                  vertical: sizeHeight * 0.02,
                  horizontal: sizeHeight * 0.02,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: sizeHeight * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: tdYellow,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            project[index].status,
                            style: GoogleFonts.poppins(
                              color: tdBlack,
                              fontSize: sizeHeight * 0.01,
                              fontWeight: FontWeight.normal,
                              height: 2,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Uri url = Uri.parse('https://wa.me/243844300329');
                            onLaunch(url);
                          },
                          child: Icon(
                            Icons.feedback_outlined,
                            size: sizeHeight * 0.02,
                            color: tdYellow,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project[index].name,
                          style: GoogleFonts.poppins(
                            color: tdYellow,
                            fontSize: sizeHeight * 0.015,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5,
                            height: 2,
                          ),
                        ),
                        Text(
                          project[index].description,
                          style: GoogleFonts.poppins(
                            color: tdWhite,
                            fontSize: sizeHeight * 0.01,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        (project[index].lien != null)
                            ? Row(
                                children: [
                                  Text(
                                    "Lien vers l'App : ",
                                    style: GoogleFonts.poppins(
                                      color: tdWhite,
                                      fontSize: sizeHeight * 0.01,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Uri url =
                                          Uri.parse('https://sosdokta.app/');
                                      onLaunch(url);
                                    },
                                    child: Text(
                                      project[index].lien,
                                      style: GoogleFonts.poppins(
                                        color: tdYellow,
                                        fontSize: sizeHeight * 0.01,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                        (project[index].youtube != null)
                            ? Row(
                                children: [
                                  Text(
                                    'Lien vers la vidéo démo : ',
                                    style: GoogleFonts.poppins(
                                      color: tdWhite,
                                      fontSize: sizeHeight * 0.01,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Uri url = Uri.parse(
                                          'https://www.youtube.com/watch?v=nQYI20I_Wyw');
                                      onLaunch(url);
                                    },
                                    child: Text(
                                      'https://www.yout...',
                                      style: GoogleFonts.poppins(
                                        color: tdYellow,
                                        fontSize: sizeHeight * 0.01,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
