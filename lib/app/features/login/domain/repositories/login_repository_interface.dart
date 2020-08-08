import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/domain/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepository {
  Future<Either<RepositoryError, LoginCredentials>> loginWithUsernameAndPass(
      LoginCredentials credentials);
}
