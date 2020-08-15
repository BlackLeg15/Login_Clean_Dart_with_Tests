import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/presentation/login_page_controller.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: loginBody(),
      ),
    );
  }

  Widget loginBody() {
    return FutureBuilder<LoginCredentials>(
      future: controller.futureCredentials,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }
        if (snapshot.data != null) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Text(snapshot.data.username),
              ),
              Text(snapshot.data.password),
            ],
          );
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                controller: controller.loginFieldController,
                decoration:
                    InputDecoration(hintText: "Digite o nome de usuário"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                controller: controller.passFieldController,
                decoration: InputDecoration(hintText: "Digite a senha"),
              ),
            ),
            RaisedButton(
                child: Text("Entrar"),
                onPressed: () {
                  controller.loginWithUserNameAndPass();
                }),
          ],
        );
      },
    );
  }
}
