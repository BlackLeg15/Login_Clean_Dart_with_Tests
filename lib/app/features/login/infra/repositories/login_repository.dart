import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';
import 'package:dartz/dartz.dart';

import '../../domain/errors/errors.dart';
import '../../domain/repositories/login_repository_interface.dart';
import '../datasources/login_data_source_interface.dart';

class LoginRepository implements ILoginRepository {
  final ILoginDataSource dataSource;

  LoginRepository(this.dataSource);

  @override
  Future<Either<RepositoryError, LoginCredentials>> loginWithUsernameAndPass(
      LoginCredentials credentials) async {
    await dataSource.loginWithUsernameAndPass(credentials);
  }
}
