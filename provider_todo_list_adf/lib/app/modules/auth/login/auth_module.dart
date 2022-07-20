import 'package:provider/provider.dart';

import '../../../core/modules/todo_list_module.dart';
import 'login_controller.dart';
import 'login_page.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(bindings: [
          ChangeNotifierProvider(create: (_) => LoginController())
        ], routers: {
          '/login': (context) => const LoginPage()
        });
}
