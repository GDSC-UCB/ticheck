import 'package:flutter/material.dart';

import 'widgets/projecthead.dart';
import 'widgets/projectview.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    dynamic size = (sizeHeight > sizeWidth) ? sizeHeight / 2 : sizeHeight;
    return Container(
      height: size,
      width: sizeWidth,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: sizeWidth * 0.03),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectHead(),
          ProjectView(),
        ],
      ),
    );
  }
}
