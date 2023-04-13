import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {

  final String id;
  final String username;
  final String phone;

  const UserEntity({
    required this.id,
    required this.username,
    required this.phone,
  });

  @override
  List<Object?> get props => [
    id,
    username,
    phone,
  ];

}
