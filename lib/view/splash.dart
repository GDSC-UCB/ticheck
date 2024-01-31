import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticheckgdscucb/routes/routes.dart';

import '../shared/shared.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController ctrl;

  @override
  void initState() {
    super.initState();
    ctrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () => context.go(RoutePath.auth),
    );
    dynamic sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: tdWhite,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            FadeTransition(
              opacity: Tween<double>(begin: 1.0, end: 0.1).animate(
                CurvedAnimation(parent: ctrl, curve: Curves.easeInOut),
              ),
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.5, end: 1.5).animate(
                  CurvedAnimation(parent: ctrl, curve: Curves.easeInOut),
                ),
                child: Container(
                  width: sizeWidth * 0.2,
                  height: sizeWidth * 0.2,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        tdWhite,
                        tdBlue,
                        tdYellow,
                        tdRed,
                        tdVert,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: sizeWidth * 0.08,
              height: sizeWidth * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(AppImage.logoImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
