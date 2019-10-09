

library ferramentas;
import 'package:ferramentas/src/sign-in.dart';
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}


class SignIn{
  Future<String> teste(){
    return signInWithGoogle();
  }
}
