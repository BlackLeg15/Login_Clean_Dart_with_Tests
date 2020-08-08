import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/domain/errors/errors.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepository {
  Future<Either<RepositoryError, ILoginCredentialsModel>>
      loginWithUsernameAndPass(LoginCredentials credentials);
}
