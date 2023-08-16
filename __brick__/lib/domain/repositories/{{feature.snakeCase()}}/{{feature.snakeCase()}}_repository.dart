import 'package:dartz/dartz.dart';

import 'package:{{project}}/core/error/failure.dart';
import 'package:{{project}}/domain/entities/{{feature.snakeCase()}}/{{feature.snakeCase()}}_entity.dart';

abstract class {{feature.pascalCase()}}Repository {
  Future<Either<Failures, List<{{feature.pascalCase()}}Entity>>> fetch{{feature.pascalCase()}}();
  Future<Either<Failures, Unit>> send{{feature.pascalCase()}}({{feature.pascalCase()}}Entity entity);
  Future<Either<Failures, {{feature.pascalCase()}}Entity>> get{{feature.pascalCase()}}(int id);
}
