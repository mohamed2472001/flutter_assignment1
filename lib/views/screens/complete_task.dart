import 'package:flutter/material.dart';
import 'package:todo_app/data/data_source.dart';
import 'package:todo_app/views/widgets/task_widgets.dart';

class CompleteTaskScreens extends StatelessWidget {
   Function function;
  CompleteTaskScreens(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.where((element) => element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks.where((element) => element.isComplete).toList()[index],function);
        });
  }
}
