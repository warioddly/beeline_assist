part of 'example_cubit.dart';

abstract class ExampleState extends Equatable {
  const ExampleState();
}

class ExampleInitial extends ExampleState {
  @override
  List<Object> get props => [];
}

class ExampleLoading extends ExampleState {
  @override
  List<Object> get props => [];
}

class ExampleLoaded extends ExampleState {
  @override
  List<Object> get props => [];
}
