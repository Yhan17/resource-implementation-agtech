import 'package:equatable/equatable.dart';

class {{feature.pascalCase()}}Entity extends Equatable {
  final String example;

  const {{feature.pascalCase()}}Entity({required this.example});

  @override
  List<Object?> get props => [
        example
      ];
}