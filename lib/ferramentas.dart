

library ferramentas;
import 'package:ferramentas/src/sign-in.dart';
/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}


class SignIn{
  Future<String> loginGoogle(){
    return signInWithGoogle();
  }
  
  void logoutGoogle(){
    return signOutGoogle();
  }

  String image() => imageUrl2;
  String name() => name2;
  String email() => email2;

}
