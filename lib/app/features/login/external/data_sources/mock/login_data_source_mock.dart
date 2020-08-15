import 'package:clean_arch_tests/app/features/login/domain/errors/errors.dart';
import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/external/data_sources/mock/model/login_credentials_model_mock.dart';
import 'package:clean_arch_tests/app/features/login/infra/datasources/login_data_source_interface.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';

class LoginDataSourceMock implements ILoginDataSource {
  @override
  Future<ILoginCredentialsModel> loginWithUsernameAndPass(
      LoginCredentials credentials) async {
    return LoginCredentialsModelMock.fromEntity(credentials);
  }
}
