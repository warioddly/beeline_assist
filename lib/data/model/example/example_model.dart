import 'package:beeline_assistant/domain/entities/example/example_entity.dart';

class ExampleModel extends ExampleEntity {
  const ExampleModel({required super.id, required super.address, required super.comment, required super.createdAt});

  factory ExampleModel.fromJson(Map<String, dynamic> data) => ExampleModel(
        id: data["id"],
        address: data["address"] as String,
        comment: data["comment"] as String,
        createdAt: DateTime.fromMillisecondsSinceEpoch(data['createdAt'].millisecondsSinceEpoch),
      );

  factory ExampleModel.toModel(ExampleEntity exampleEntity) => ExampleModel(
        id: exampleEntity.id,
        address: exampleEntity.address,
        comment: exampleEntity.comment,
        createdAt: exampleEntity.createdAt,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "address": address,
        "comment": comment,
        "createdAt": DateTime.now().millisecondsSinceEpoch,
      };
}
