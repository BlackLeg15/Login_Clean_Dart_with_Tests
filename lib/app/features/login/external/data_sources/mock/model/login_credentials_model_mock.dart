import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';

class LoginCredentialsModelMock implements ILoginCredentialsModel {
  String username;
  String password;

  LoginCredentialsModelMock();

  @override
  LoginCredentials toEntity() {
    return LoginCredentials(this.username, this.password);
  }

  @override
  factory LoginCredentialsModelMock.fromEntity(LoginCredentials entity) {
    return LoginCredentialsModelMock()
      ..username = entity.username
      ..password = entity.password;
  }
}
