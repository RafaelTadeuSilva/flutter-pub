library ferramentas;

import 'package:ferramentas/src/sign-in.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class SignIn {
  Future<String> teste() {
    return signInWithGoogle();
  }

  String image() {
    return imageUrl2;
  }

  String name() {
    return name2;
  }

  String email() {
    return email2;
  }
}
