import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'view.dart';

class AuthScreen extends StatelessWidget {
  static const route = '/auth';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    return (user != null) ? const HomeScreen() : const WelcomePage();
  }
}
