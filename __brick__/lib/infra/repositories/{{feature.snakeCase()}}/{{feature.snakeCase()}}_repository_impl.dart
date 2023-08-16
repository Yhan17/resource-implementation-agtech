import 'package:dartz/dartz.dart';

import 'package:{{project}}/core/error/failure.dart';
import 'package:{{project}}/domain/entities/{{feature.snakeCase()}}/{{feature.snakeCase()}}_entity.dart';
import 'package:{{project}}/domain/datasource/remote/{{feature.snakeCase()}}/{{feature.snakeCase()}}_api_datasource.dart';
import 'package:{{project}}/domain/repositories/{{feature.snakeCase()}}/{{feature.snakeCase()}}_repository.dart';

class {{feature.pascalCase()}}RepositoryImpl extends {{feature.pascalCase()}}Repository {
  final {{feature.pascalCase()}}Datasource datasource;

   {{ feature.pascalCase() }}RepositoryImpl(this.datasource);


  @override
  Future<Either<Failures, List<{{feature.pascalCase()}}Entity>>> fetch{{feature.pascalCase()}}() async {
    final result = await datasource.fetch{{feature.pascalCase()}}();
    return result;
  }

  @override
  Future<Either<Failures, Unit>> send{{feature.pascalCase()}}({{feature.pascalCase()}}Entity entity) async {
    final result = await datasource.send{{feature.pascalCase()}}(entity);
    return result;
  }

  @override
  Future<Either<Failures, {{feature.pascalCase()}}Entity>> get{{feature.pascalCase()}}(int id) async {
    final result = await datasource.get{{feature.pascalCase()}}(id);
    return result;
  }
}
