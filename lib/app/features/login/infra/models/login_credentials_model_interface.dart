import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';

abstract class ILoginCredentialsModel {
  ILoginCredentialsModel.fromEntity(LoginCredentials credentials);
  LoginCredentials toEntity();
}
