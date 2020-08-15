import 'package:clean_arch_tests/app/features/login/presentation/login_module.dart';
import 'package:clean_arch_tests/app/shared/app_widget.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
      ];
}
