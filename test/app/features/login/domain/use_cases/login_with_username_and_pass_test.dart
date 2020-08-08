import 'package:clean_arch_tests/app/features/login/domain/entities/login_credentials.dart';
import 'package:clean_arch_tests/app/features/login/domain/errors/errors.dart';
import 'package:clean_arch_tests/app/features/login/domain/repositories/login_repository_interface.dart';
import 'package:clean_arch_tests/app/features/login/domain/use_cases/login_with_username_and_pass.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoginRepositoryMock extends Mock implements ILoginRepository {}

main() {
  var loginRepositoryMock = LoginRepositoryMock();
  var loginUseCase = LoginWithUsernameAndPass(loginRepositoryMock);
  var falseEntity = LoginCredentials("Eu", "Senha");
  var repositoryError = RepositoryError("repository error");

  group("Testa o caso de uso de Login", () {
    test("|| Deve realizar um login bem sucedido", () {
      when(loginRepositoryMock.loginWithUsernameAndPass(falseEntity))
          .thenAnswer((value) async => right(falseEntity));

      expect(loginUseCase(falseEntity), completion(right(falseEntity)));
    });

    test("|| Deve retornar um erro", () {
      when(loginRepositoryMock.loginWithUsernameAndPass(null))
          .thenAnswer((value) async => left(repositoryError));

      expect(loginUseCase(null), completion(left(repositoryError)));
    });
  });
}
