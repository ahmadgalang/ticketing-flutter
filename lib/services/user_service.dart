import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ticketing/models/user_model.dart';

class UserService {
  // Corrected collection reference definition
  final CollectionReference _userReference = FirebaseFirestore.instance
      .collection('user'); // Use 'user' or your preferred collection name

  // Method to set user data
  Future<void> setUser(UserModel user) async {
    try {
      await _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance
      });
    } catch (e) {
      rethrow;
    }
  }
}
