import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todo_app/model/todo.dart';

class TodoService {
  final String url = 'https://dummyjson.com/todos';

  Future<List<Todo>> getUncompletedTodos() async {
    final response = await http.get(Uri.parse(url));

    List<dynamic> resp = jsonDecode(response.body)['todos'];

    List<Todo> todos = List.empty(growable: true);

    for (var element in resp) {
      
      Todo task =Todo.fromJson(element);
      
      if(!task.completed!){
        todos.add(task);
      }
      
    }

    return todos;
  }

  Future<List<Todo>> getCompletedTodos() async {
    final response = await http.get(Uri.parse(url));

    List<dynamic> resp = jsonDecode(response.body)['todos'];

    List<Todo> todos = List.empty(growable: true);

    for (var element in resp) {
      
      Todo task =Todo.fromJson(element);
      
      if(task.completed!){
        todos.add(task);
      }
      
    }

    return todos;
  }
}
