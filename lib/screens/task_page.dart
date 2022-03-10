import 'package:flutter/material.dart';
import 'package:to_do_app_task/classes/my_tasks.dart';
import 'package:to_do_app_task/models/pixel_text.dart';

import '../models/task_model.dart';
import 'add_task.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: pixelText('My Tasks', 'PressStart', 20, Colors.white),
          backgroundColor: Colors.teal,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddTask()));
          },
          child: const Icon(
            Icons.add,
          ),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: MyTasks.tasks.length,
          itemBuilder: (context, index) => AddedTask(
            task: MyTasks.tasks[index].task,
          ),
        ),
      ),
    );
  }
}
