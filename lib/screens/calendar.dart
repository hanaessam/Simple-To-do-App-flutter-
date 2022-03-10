import 'package:flutter/material.dart';
import 'package:to_do_app_task/models/pixel_text.dart';
import 'package:to_do_app_task/models/task_model.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: pixelText('Calendar', 'PressStart', 20, Colors.white),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child:
                    pixelText('Today', 'PressStart', 25, Colors.teal.shade900),
              ),
              AddedTask(task: 'make bed'),
              AddedTask(task: 'do dishes'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: pixelText(
                    'Tomorrow', 'PressStart', 25, Colors.teal.shade900),
              ),
              AddedTask(task: 'submit assignment'),
              AddedTask(task: 'work on project'),
              AddedTask(task: 'call a friend'),
            ],
          ),
        ),
      ),
    );
  }
}
