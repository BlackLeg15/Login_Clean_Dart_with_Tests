import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/domain/repositories/login_repository_interface.dart';
import 'package:dartz/dartz.dart';

class LoginWithUsernameAndPass {
  final ILoginRepository repository;

  LoginWithUsernameAndPass(this.repository);

  Future<Either<Exception, LoginCredentials>> call(
      LoginCredentials credentials) async {
    return await repository.loginWithUsernameAndPass(credentials);
  }
}
