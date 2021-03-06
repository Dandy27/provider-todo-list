//app_module -> ficam todas as classes compartilhadas por varios modulos

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo_list_adf/app/core/database/sqlite_connection_factory.dart';

import 'app_widget.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => SqliteConnectionFactory(),
          lazy: false,
        )
      ],
      child: const AppWidget(),
    );
  }
}
