// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist_firebase/loading.dart';
import 'package:todolist_firebase/model/todo.dart';
import 'package:todolist_firebase/services/database_services.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  bool isComplet = false;
  TextEditingController todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<List<Todo>>(
            stream: DatabaseService().listTodos(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Loading();
              }
              List<Todo> todos = snapshot.data as dynamic;
              return Padding(
                padding: EdgeInsets.all(25),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "All Todos",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Divider(),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[800],
                        ),
                        shrinkWrap: true,
                        itemCount: todos.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                            key: Key(
                              todos[index].title,
                            ),
                            background: Container(
                              padding: EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              child: Icon(Icons.delete),
                              color: Colors.red[700],
                            ),
                            onDismissed: (direction) async {
                              key:
                              ValueKey(index);
                              await DatabaseService()
                                  .removeTodo(todos[index].uid);
                            },
                            child: ListTile(
                              onTap: () {
                                todos[index].isComplet
                                    ? DatabaseService()
                                        .unCompletTask(todos[index].uid)
                                    : DatabaseService()
                                        .completTask(todos[index].uid);
                              },
                              leading: Container(
                                padding: EdgeInsets.all(2),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  shape: BoxShape.circle,
                                ),
                                child: todos[index].isComplet
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      )
                                    : Container(),
                              ),
                              title: Text(
                                todos[index].title,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[200],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  backgroundColor: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  title: Row(
                    children: [
                      Text(
                        'Add Todo',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                          size: 30,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  children: [
                    Divider(),
                    TextFormField(
                      controller: todoTitleController,
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: Colors.white,
                      ),
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: "eg. exercise",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        onPressed: () async {
                          if (todoTitleController.text.isNotEmpty) {
                            await DatabaseService()
                                .createNewTodo(todoTitleController.text.trim());
                            Navigator.pop(context);
                          }
                        },
                      ),
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}
