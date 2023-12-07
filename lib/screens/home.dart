import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/fonts.dart';
import 'package:todo_app/constants/tasktype.dart';
import 'package:todo_app/headeritem.dart';
import 'package:todo_app/model/task.dart';
import 'package:todo_app/screens/addnewtask.dart';
import 'package:todo_app/service/todo_service.dart';
import 'package:todo_app/todoitem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  //List<String> todo = ['Study Lessons', 'Run 5k', 'Go to Party'];
  //List<String> completed = ['Game Meetup', 'Take Out Tash','Software Bugs'];

  List<Task> todo = [
    Task(
        title: 'Study Lessons',
        description: 'Study COMP110',
        isCompleted: false,
        type: TaskType.notes),
    Task(
        title: 'Run 5k',
        description: 'run 5 km',
        isCompleted: false,
        type: TaskType.contest),
    Task(
        title: 'Software Bugs',
        description: 'For Thailand Happy Tour',
        isCompleted: false,
        type: TaskType.calender)
  ];

  List<Task> completed = [
    Task(
        title: 'Game Meetup',
        description: 'need social',
        isCompleted: true,
        type: TaskType.notes),
    Task(
        title: 'Take Out Tash',
        description: 'what the fck',
        isCompleted: true,
        type: TaskType.contest),
    Task(
        title: 'Run 5k',
        description: 'run 5 km',
        isCompleted: true,
        type: TaskType.calender)
  ];

  void addNewTask(Task newTask) {
    setState(() {
      todo.add(newTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    TodoService todoService = TodoService();
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              // Header
              const HeaderItem(),
              // Top Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: FutureBuilder(
                      future: todoService.getUncompletedTodos(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return const CircularProgressIndicator();
                        } else {
                          return ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return TodoItem(task: snapshot.data![index]);
                              });
                        }
                      },
                    ),
                  ),
                ),
              ),
              // Completed Text
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Completed',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
              ),
              // Bottom Column

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: FutureBuilder(
                      future: todoService.getCompletedTodos(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return const CircularProgressIndicator();
                        } else {
                          return ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                return TodoItem(task: snapshot.data![index]);
                              });
                        }
                      },
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AddNewTaskScreen(
                        addNewTask: (newTask) => addNewTask(newTask),
                      ),
                    ));
                  },
                  child: const Text('Add New Task'))
            ],
          ),
        ),
      ),
    );
  }
}
