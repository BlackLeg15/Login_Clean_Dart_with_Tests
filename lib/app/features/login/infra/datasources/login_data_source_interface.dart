import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';
import 'package:dartz/dartz.dart';
import '../../domain/errors/errors.dart';

abstract class ILoginDataSource {
  Future<Either<DataSourceError, ILoginCredentialsModel>>
      loginWithUsernameAndPass(LoginCredentials credentials);
}
