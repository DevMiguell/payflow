import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  Future<void> googleSignIn(BuildContext context) async {
    print("Google Sign In");
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final response = await _googleSignIn.signIn();
      print(response);
    } catch (error) {
      print(error);
    }
  }
}
