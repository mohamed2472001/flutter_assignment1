import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/views/screens/all_task_screens.dart';
import 'package:todo_app/views/screens/complete_task.dart';
import 'package:todo_app/views/screens/incomplete_task.dart';
import 'package:todo_app/views/screens/main_task_screens.dart';

void main() {
  runApp(MaterialApp(
    home: ResponsiveTest(),
  ));
}

class ResponsiveTest extends StatelessWidget {
  List<int> studentsAges = [23, 24, 26];
  bayanFunction() {
    int result = studentsAges.fold<int>(
        0, (previousValue, element) => previousValue + element);
    log(result.toString());
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Scaffold(
        body: MediaQuery.of(context).size.width > 500
            ? LandScapeDesign()
            : PortRaitDesign()
            );
    // : Center(
    //     child: ElevatedButton(
    //         onPressed: () {
    //           bayanFunction();
    //         },
    //         child: Text("")),
    //   ));
  }
}

class PortRaitDesign extends StatefulWidget {

  @override
  State<PortRaitDesign> createState() => _PortRaitDesignState();
}

class _PortRaitDesignState extends State<PortRaitDesign> {
  PageController pageController = PageController();
refreshPage(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Mohammed Moamen"),
              accountEmail: Text("MohammedMoamen@gmail.com")),
              SizedBox(height: 50,),
            InkWell(
          child: Text(
            'Go to All Task Screen',
            style: TextStyle(fontSize: 24.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllTaskScreens(refreshPage)),
            );
          },
        ),
        SizedBox(height: 50,),
                 InkWell(
          child: Text(
            'Go to Complete Task Screens',
            style: TextStyle(fontSize: 20.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CompleteTaskScreens(refreshPage)),
            );
          },
        ),
        SizedBox(height: 50,),
                 InkWell(
          child: Text(
            'Go to InComplete Task Screens',
            style: TextStyle(fontSize: 20.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InCompleteTaskScreens(refreshPage)),
            );
          },
        ),
              
              
        ],
      ),
      ),
      body: Center(
        child: PageView(
        controller: pageController,
        children: [
          AllTaskScreens(refreshPage),
          CompleteTaskScreens(refreshPage),
          InCompleteTaskScreens(refreshPage)
        ],
      ),
      ),
    );
  }
}

class LandScapeDesign extends StatefulWidget {
  @override
  State<LandScapeDesign> createState() => _LandScapeDesignState();
}

class _LandScapeDesignState extends State<LandScapeDesign> {
  PageController pageController = PageController();
  refreshPage(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: 
          [Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Mohammed Moamen"),
                  accountEmail: Text("MohammedMoamen@gmail.com")),
                  SizedBox(height: 30,),
                InkWell(
              child: Text(
                'Go to All Task Screen',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllTaskScreens(refreshPage)),
                );
              },
            ),
            SizedBox(height: 30,),
                     InkWell(
              child: Text(
                'Go to Complete Task Screens',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompleteTaskScreens(refreshPage)),
                );
              },
            ),
            SizedBox(height: 30,),
                     InkWell(
              child: Text(
                'Go to InComplete Task Screens',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InCompleteTaskScreens(refreshPage)),
                );
              },
            ),
                  
                  
            ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: PageView(
        controller: pageController,
        children: [
          AllTaskScreens(refreshPage),
          CompleteTaskScreens(refreshPage),
          InCompleteTaskScreens(refreshPage)
        ],
      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
