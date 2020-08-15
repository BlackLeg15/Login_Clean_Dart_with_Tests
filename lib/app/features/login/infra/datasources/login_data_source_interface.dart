import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';

abstract class ILoginDataSource {
  Future<ILoginCredentialsModel> loginWithUsernameAndPass(
      LoginCredentials credentials);
}
