import 'package:flutter/material.dart';

class AddedTask extends StatefulWidget {
  final String task;
  const AddedTask({Key? key, required this.task}) : super(key: key);
  @override
  State<AddedTask> createState() => _AddedTaskState();
}

class _AddedTaskState extends State<AddedTask> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.task),
      value: _isSelected,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (newValue) {
        setState(() {
          _isSelected = newValue!;
        });
      },
      activeColor: Colors.teal,
    );
  }
}
