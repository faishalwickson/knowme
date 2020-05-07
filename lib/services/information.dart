import 'package:flutter/cupertino.dart';
import 'package:knowme/services/person.dart';

class TodoModel extends ChangeNotifier{
  List<TaskModel>taskList=[];

  addTaskInList(){
    TaskModel taskModel = TaskModel("Data ${taskList.length}","Informasi kartu berdasarkan data ${taskList.length}");
    taskList.add(taskModel);

    notifyListeners();

  }
}