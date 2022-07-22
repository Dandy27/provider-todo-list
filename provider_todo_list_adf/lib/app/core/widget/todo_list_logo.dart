import 'package:flutter/material.dart';
import 'package:provider_todo_list_adf/app/core/ui/theme_extensions.dart';

class TodoListLogo extends StatelessWidget {
  const TodoListLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/todo_list_logo.png',
          height: 200,
        ),
        Text(
          ' Todo List',
          style:  context.textTheme.headline6       )
      ],
    );
  }
}
