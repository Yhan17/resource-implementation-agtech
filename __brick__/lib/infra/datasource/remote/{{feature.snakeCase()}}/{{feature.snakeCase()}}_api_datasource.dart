
import 'package:dartz/dartz.dart';

import 'package:{{project}}/core/error/failure.dart';
import 'package:{{project}}/core/http/agtech_http_client.dart';
import 'package:{{project}}/domain/entities/{{feature.snakeCase()}}/{{feature.snakeCase()}}_entity.dart';
import 'package:{{project}}/infra/dtos/{{feature.snakeCase()}}/{{feature.snakeCase()}}_dto.dart';
import 'package:{{project}}/core/handlers/handle_exception.dart';
import 'package:{{project}}/domain/datasource/remote/{{feature.snakeCase()}}/{{feature.snakeCase()}}_api_datasource.dart';

class {{ feature.pascalCase() }}DatasourceImpl extends {{ feature.pascalCase() }}Datasource {

  final AgtechHttpClient client;

 {{ feature.pascalCase() }}DatasourceImpl(this.client);

  @override
  Future<Either<Failures, List<{{feature.pascalCase()}}Entity>>> fetch{{feature.pascalCase()}}() async {
  try{
      final result = await client.get(
        '{{endpoint}}',
      );
      final items = (result.data as List)
          .map((item) => {{ feature.pascalCase() }}Dto.fromMap(item).toEntity())
          .toList();

      return right(items);
      } on Exception catch (e, stack) {
      return left(HandleException.handleHttp(e, stack));
    }

  }

  @override
  Future<Either<Failures, Unit>> send{{feature.pascalCase()}}({{feature.pascalCase()}}Entity entity) async {
     try{
      final result = await client.post(
        '{{endpoint}}',
      );
     

      return right(unit);
      } on Exception catch (e, stack) {
      return left(HandleException.handleHttp(e, stack));
    }
  }

  @override
  Future<Either<Failures, {{feature.pascalCase()}}Entity>> get{{feature.pascalCase()}}(int id) async {
      try{
      final result = await client.post(
        '{{endpoint}}/$id',
      );
     
     final entity = {{ feature.pascalCase() }}Dto.fromMap(result.data).toEntity();

      return right(entity);
      } on Exception catch (e, stack) {
      return left(HandleException.handleHttp(e, stack));
    }
  }
}
