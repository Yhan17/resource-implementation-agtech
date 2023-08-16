import 'package:dartz/dartz.dart';

import 'package:{{project}}/core/error/failure.dart';
import 'package:{{project}}/core/usecase/usecase.dart';
import 'package:{{project}}/repositories/splash/{{feature.snakeCase()}}_repository.dart';
import 'package:{{project}}/domain/entities/{{feature.snakeCase()}}/{{feature.snakeCase()}}_entity.dart';

class Fetch{{feature.pascalCase()}}UseCaseImpl extends Fetch{{feature.pascalCase()}} {
  Fetch{{feature.pascalCase()}}UseCaseImpl(super.repository);

   @override
  Future<Either<Failures, List<{{feature.pascalCase()}}>>> call(Unit params) async {
    return repository.fetch{{feature.pascalCase()}}();
  }
}

class Get{{feature.pascalCase()}}UseCaseImpl extends Get{{feature.pascalCase()}}UseCase {
  Get{{feature.pascalCase()}}UseCaseImpl(super.repository);

  @override
  Future<Either<Failures, {{feature.pascalCase()}}>> call(int params) async {
    return repository.get{{feature.pascalCase()}}(params);
  }
}

class Send{{feature.pascalCase()}}UseCaseImpl extends
    Send{{feature.pascalCase()}}UseCase {
  Send{{feature.pascalCase()}}UseCaseImpl(super.repository);

    @override
  Future<Either<Failures, Unit>> call({{feature.pascalCase()}} params) async {
    return repository.send{{feature.pascalCase()}}(params);
  }
}
