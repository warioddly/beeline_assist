import 'package:beeline_assistant/domain/entities/user_entity.dart';

class UserModel extends UserEntity {

  const UserModel({ required super.id, required super.username, required super.phone });

  factory UserModel.fromJson(Map<String, dynamic> data) => UserModel(
    id: data["id"],
    username: data["username"] as String,
    phone: data["phone"] as String,
  );

  factory UserModel.fromEntity(UserEntity entity) => UserModel(
      id: entity.id,
      username: entity.username,
      phone: entity.phone,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "address": username,
    "comment": phone,
  };

}
