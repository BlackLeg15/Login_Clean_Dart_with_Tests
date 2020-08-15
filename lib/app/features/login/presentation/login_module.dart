import 'package:clean_arch_tests/app/features/login/domain/repositories/login_repository_interface.dart';
import 'package:clean_arch_tests/app/features/login/domain/use_cases/login_with_username_and_pass.dart';
import 'package:clean_arch_tests/app/features/login/external/data_sources/mock/login_data_source_mock.dart';
import 'package:clean_arch_tests/app/features/login/infra/datasources/login_data_source_interface.dart';
import 'package:clean_arch_tests/app/features/login/infra/repositories/login_repository.dart';
import 'package:clean_arch_tests/app/features/login/presentation/login_page.dart';
import 'package:clean_arch_tests/app/features/login/presentation/login_page_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginPageController(i())),
        Bind((i) => LoginWithUsernameAndPass(i.get<ILoginRepository>())),
        Bind((i) => LoginRepository(i.get<ILoginDataSource>())),
        Bind((i) => LoginDataSourceMock()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => LoginPage()),
      ];
}
