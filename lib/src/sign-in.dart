import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

final GoogleSignIn googleSignIn = GoogleSignIn();

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  assert(user.email != null);
  assert(user.displayName != null);
  assert(user.photoUrl != null);

  name2 = user.displayName;
  email2 = user.email;
  imageUrl2 = user.photoUrl;
  if (name2.contains(" ")) {
    name2 = name2.substring(0, name2.indexOf(" "));
  }

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);
  return 'signInWithGoogle succeeded: $user';
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Sign Out");
}

String name2;
String email2;
String imageUrl2;
