import 'package:equatable/equatable.dart';

class UserModel extends Equatable {

  final String id;
  final String name;
  final String email;
  final String password;
  final String hobby;
  final int balance;

  UserModel(
      {
      required this.id,
      required this.name,
      required this.email,
      required this.password,
      this.hobby = '',
      this.balance = 0});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, email, password, hobby, balance];
}
