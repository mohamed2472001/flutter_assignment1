import 'package:flutter/material.dart';
import 'package:todo_app/data/data_source.dart';
import 'package:todo_app/views/widgets/task_widgets.dart';

class AllTaskScreens extends StatelessWidget {
  Function function;
  AllTaskScreens(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index],function);
        });
  }
}
