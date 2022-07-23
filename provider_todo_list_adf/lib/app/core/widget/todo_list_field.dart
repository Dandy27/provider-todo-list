import 'package:flutter/material.dart';

import '../ui/todo_list_icons.dart';

class TodoListField extends StatelessWidget {
  final String label;
  final bool obscureText;
  const TodoListField(
      {Key? key, required this.label,  this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red)),
          isDense: true,
          suffixIcon: IconButton(onPressed: (){},
            icon: const Icon(TodoListIcons.eye),
          )
          ),
      obscureText: obscureText,
    );
  }
}
