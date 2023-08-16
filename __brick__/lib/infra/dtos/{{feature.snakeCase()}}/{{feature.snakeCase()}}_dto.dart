import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:{{project}}/domain/entities/{{feature.snakeCase()}}/{{feature.snakeCase()}}_entity.dart';

part '{{feature.snakeCase()}}_dto.freezed.dart';

@freezed
abstract class {{feature.pascalCase()}}Dto with _${{feature.pascalCase()}}Dto {
  const {{feature.pascalCase()}}Dto._();

  const factory {{feature.pascalCase()}}Dto({
    required String example,

  }) = _{{feature.pascalCase()}}Dto;

  factory {{feature.pascalCase()}}Dto.fromMap(Map<String, dynamic> map) {
    return {{feature.pascalCase()}}Dto(
      example: map['example'] as String,
    );
  }

   {{feature.pascalCase()}}Entity toEntity() {
    return {{feature.pascalCase()}}Entity(
      example: example,
    );
  }
}