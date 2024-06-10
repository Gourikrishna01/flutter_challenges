import 'package:flutter/material.dart';

import 'package:todoapp/services/database_service.dart';

import '../models/task.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final Notes _notes = Notes.instance;
  String? _title = null;
  String? _description = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NoteApp"),
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButton: _addTaskButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: _taskList(),
    );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text("Add TAsk"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          onChanged: (value) {
                            _title = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), hintText: "title"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          onChanged: (value) {
                            _description = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "description"),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          if (_title == null ||
                              _title == " " && _description == null ||
                              _description == " ") return;
                          _notes.addTask(_title!, _description!);
                          setState(() {
                            _title = null;
                            _description = null;
                          });
                          Navigator.pop(context);
                        },
                        child: Text("Done"),
                      )
                    ],
                  ),
                ));
      },
      child: Icon(Icons.add),
    );
  }

  Widget _taskList() {
    return FutureBuilder(
        future: _notes.getTasks(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              Task task = snapshot.data![index];
              return ListTile(
                title: Text(task.title),
                subtitle: Text(task.description),
              );
            },
          );
        });
  }
}
