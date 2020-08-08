import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/infra/models/login_credentials_model_interface.dart';

class LoginCredentialsModelHasura implements ILoginCredentialsModel {
  String username;
  String password;

  LoginCredentialsModelHasura();

  @override
  factory LoginCredentialsModelHasura.fromEntity(LoginCredentials entity) {
    return LoginCredentialsModelHasura()
      ..username = entity.username
      ..password = entity.password;
  }

  @override
  LoginCredentials toEntity() {
    return LoginCredentials(this.username, this.password);
  }

  Map<String, dynamic> toJson() {
    return {"username": username, "password": password};
  }

  factory LoginCredentialsModelHasura.fromJson(Map<String, dynamic> json) {
    return LoginCredentialsModelHasura()
      ..username = json['username']
      ..password = json['password'];
  }
}
