import 'package:flutter/material.dart';
import 'package:todo_app/views/screens/all_task_screens.dart';
import 'package:todo_app/views/screens/complete_task.dart';
import 'package:todo_app/views/screens/incomplete_task.dart';

class MainTaskScreens extends StatefulWidget {
  @override
  State<MainTaskScreens> createState() => _MainTaskScreensState();
}

class _MainTaskScreensState extends State<MainTaskScreens> {
  PageController pageController = PageController();

  int pageIndex = 0;
  refreshPage(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (value) {
            pageIndex = value;
            pageController.jumpToPage(value);
            setState(() {
              
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      appBar: AppBar(title: Text("TODO APP")),
      body: PageView(
        controller: pageController,
        children: [
          AllTaskScreens(refreshPage),
          CompleteTaskScreens(refreshPage),
          InCompleteTaskScreens(refreshPage)
        ],
      ),
    );
  }
}
