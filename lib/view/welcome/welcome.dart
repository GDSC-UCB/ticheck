import 'package:flutter/material.dart';

import '../../shared/shared.dart';
import 'welcome/welcome.scroll.dart';
import 'welcomediv/welcome.div.dart';

class WelcomePage extends StatefulWidget {
  static const route = '/welcome';
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  late AnimationController ctrl;

  @override
  void initState() {
    super.initState();
    ctrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dynamic sizeHeight = MediaQuery.sizeOf(context).height;
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: tdWhite,
      body: SizedBox(
        height: sizeHeight,
        width: sizeWidth,
        child: (sizeHeight < sizeWidth)
            ? WelcomeScroll(ctrl: ctrl)
            : WelcomeDiv(ctrl: ctrl),
      ),
    );
  }
}
