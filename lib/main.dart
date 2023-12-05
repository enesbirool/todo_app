import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_app/constants/fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double devicewidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(
            children: [
              // Header
              Container(
                width: devicewidth,
                height: deviceHeight / 3,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(
                            'lib/assets/images/add_new_task_header.png'),
                        fit: BoxFit.cover)),
                child: const Column(children: [
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        '05/12/2023',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Team For Todo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ))
                ]),
              ),     
              // Top Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        )
                      ],
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
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.notes_outlined,
                                  size: 50,
                                ),
                                const Text(
                                  'Study Lesson',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21),
                                ),
                                Checkbox(
                                    value: isChecked,
                                    onChanged: (val) => {
                                          setState(() {
                                            isChecked = val!;
                                          })
                                        })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              ElevatedButton(onPressed: (){}, child: const Text('Add New Task'))
            ],
          ),
        ),
      ),
    );
  }
}