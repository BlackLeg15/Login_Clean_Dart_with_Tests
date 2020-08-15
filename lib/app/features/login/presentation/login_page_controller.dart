import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/domain/errors/errors.dart';
import 'package:clean_arch_tests/app/features/login/domain/use_cases/login_with_username_and_pass.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPageController implements Disposable {
  final LoginWithUsernameAndPass loginUseCase;
  final loginFieldController = TextEditingController();
  final passFieldController = TextEditingController();

  Future<LoginCredentials> futureCredentials;

  LoginPageController(this.loginUseCase);

  void loginWithUserNameAndPass() {
    futureCredentials = loginUseCase(LoginCredentials(
            loginFieldController.text, passFieldController.text))
        .then(
      (value) => value.fold(
        (e) {
          var erro = "Erro desconhecido";
          if (e is RepositoryError) {
            erro = e.message;
          }

          Modular.to.showDialog(builder: (context) {
            return AlertDialog(
              title: Text("Casa caiu migão"),
              content: Text(erro),
              actions: [
                RaisedButton(
                  child: Text("OK"),
                  onPressed: () => Modular.to.pop(),
                ),
              ],
            );
          });
          throw e;
        },
        (r) => r,
      ),
    );
  }

  @override
  void dispose() {
    loginFieldController.dispose();
    passFieldController.dispose();
  }
}
