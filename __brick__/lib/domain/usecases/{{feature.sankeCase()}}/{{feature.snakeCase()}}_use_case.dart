import 'package:dartz/dartz.dart';

import 'package:{{project}}/core/error/failure.dart';
import 'package:{{project}}/core/usecase/usecase.dart';
import 'package:{{project}}/repositories/splash/{{feature.snakeCase()}}_repository.dart';
import 'package:{{project}}/domain/entities/{{feature.snakeCase()}}/{{feature.snakeCase()}}_entity.dart';

abstract class Fetch{{feature.pascalCase()}}UseCase
    extends UseCase<{{feature.pascalCase()}}Repository, Either<Failures, List<{{feature.pascalCase()}}Entity>>, Unit> {
  Fetch{{feature.pascalCase()}}UseCase(super.repository);
}

abstract class Get{{feature.pascalCase()}}UseCase
    extends UseCase<{{feature.pascalCase()}}Repository, Either<Failures, {{feature.pascalCase()}}Entity>, int> {
  Get{{feature.pascalCase()}}UseCase(super.repository);
}

abstract class Send{{feature.pascalCase()}}UseCase
    extends UseCase<{{feature.pascalCase()}}Repository, Either<Failures, Unit>, {{feature.pascalCase()}}Entity entity> {
  Send{{feature.pascalCase()}}UseCase(super.repository);
}
