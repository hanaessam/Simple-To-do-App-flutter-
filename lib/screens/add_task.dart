import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_task/classes/task.dart';
import 'package:to_do_app_task/models/button_styles.dart';
import 'package:to_do_app_task/models/date_picker.dart';

import '../classes/my_tasks.dart';
import '../models/pixel_text.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  late TextEditingController taskCtrlr;
  @override
  void dispose() {
    taskCtrlr.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    taskCtrlr = TextEditingController();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade900,
          title: pixelText('Add Task', 'PressStart', 20, Colors.white),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: taskCtrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('New Task'),
                ),
              ),
              Container(
                child: MyStatelessWidget(),
              ),
              MaterialButton(
                onPressed: () {
                  MyTasks.tasks.add(Task(taskCtrlr.value.text));
                  Navigator.pop(context);
                },
                child: WideButton('Add Task'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
