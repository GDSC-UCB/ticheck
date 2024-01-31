import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ticheckgdscucb/firebase_options.dart';
import 'package:ticheckgdscucb/services/db.dart';

import 'models/user.dart';
import 'routes/routes.dart';
import 'shared/shared.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MultiProvider(providers: [
    StreamProvider.value(value: DBServices().user, initialData: null),
    StreamProvider<List<UseR>>.value(
      initialData: const [],
      value: DBServices().users,
    ),
  ], child: const Ticheck()));
}

class Ticheck extends StatelessWidget {
  const Ticheck({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: tdBlack,
      ),
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ticheck.gsdcucb',
      theme: lightTheme,
      routerConfig: AppRoutes.router,
    );
  }
}
