import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/user.dart';

class DBServices {
  dynamic context;
  DBServices({this.context});

  CollectionReference userDB = FirebaseFirestore.instance.collection('users');
  FirebaseStorage storage = FirebaseStorage.instance;

  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn(
    clientId: const String.fromEnvironment(
        '1082352654609-uatsnubl5sgkntdpnac8qpbn2tehnmek.apps.googleusercontent.com'),
  );

  //Méthode de connexion
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignInAccount? googleUser = kIsWeb
        ? await (googleSignIn.signInSilently())
        : await (googleSignIn.signIn());

    if (kIsWeb && googleUser == null) {
      googleUser = await (googleSignIn.signIn());
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Stream<User?> get user => auth.authStateChanges();

  // Méthode de déconnexion

  signOut() async {
    await googleSignIn.signOut();
    await auth.signOut();
  }

  //Ajout d'un user dans le Cloud FireStore

  addNotes(UseR users) {
    userDB.add({
      "id": users.id,
      "name": users.name,
      "mail": users.mail,
      "imgUrl": users.photo,
      "userTimestamps": FieldValue.serverTimestamp(),
    });
  }

  //Récupération des users en temps réel

  Stream<List<UseR>> get users {
    Query queryUsers = userDB.orderBy("userTimestamps", descending: true);
    return queryUsers.snapshots().map((snapshot) {
      return snapshot.docs.map((docs) {
        return UseR(
          id: docs.get("id"),
          name: docs.get("name"),
          mail: docs.get("mail"),
          photo: docs.get("imgUrl"),
        );
      }).toList();
    });
  }
}
