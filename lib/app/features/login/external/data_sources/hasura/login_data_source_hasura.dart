import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/infra/datasources/login_data_source_interface.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';

class LoginDataSourceHasura implements ILoginDataSource {
  @override
  Future<ILoginCredentialsModel> loginWithUsernameAndPass(
      LoginCredentials credentials) {
    // TODO: implement loginWithUsernameAndPass
    throw UnimplementedError();
  }
}
