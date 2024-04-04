import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class FirebaseTokenManager{
  final log = Logger();
  Future<String?> getUserToken() async {
    var idToken = await FirebaseAuth.instance.currentUser!.getIdToken();
    log.d("IdToken: idToken");
    return idToken;
  }
}