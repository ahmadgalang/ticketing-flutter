import 'package:firebase_auth/firebase_auth.dart';
import 'package:ticketing/models/user_model.dart';
import 'package:ticketing/services/user_service.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // Membuat objek UserModel setelah pendaftaran berhasil
      UserModel user = UserModel(
          id: userCredential.user!.uid,
          name: name,
          email: email,
          password: password,
          hobby: hobby,
          balance: 2800000);

      await UserService().setUser(user);

      return user;
    } catch (e) {
      // Menangani kesalahan dengan memberikan informasi kesalahan
      rethrow;
    }
  }
}
