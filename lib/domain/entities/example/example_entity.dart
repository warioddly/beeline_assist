import 'package:equatable/equatable.dart';

class ExampleEntity extends Equatable {
  final String id;
  final String address;
  final String comment;
  final DateTime createdAt;

  const ExampleEntity({
    required this.id,
    required this.address,
    required this.comment,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        id,
        address,
        comment,
        createdAt,
      ];
}
