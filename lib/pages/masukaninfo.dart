import 'package:flutter/material.dart';
import 'package:knowme/services/information.dart';
import 'package:knowme/services/person.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider(
          builder: (context)=> TodoModel(),
          child: MyHomePage(),
        )
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Informasi"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular((50),))),
                  child : Consumer<TodoModel>(
                    builder: (context, todo, child){
                      return ListView.builder(
                          itemCount: todo.taskList.length,
                          itemBuilder: (context, index){
                            return Container(
                              child:
                                  ListTile(
                                    contentPadding: EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 8),
                                    title: Text(todo.taskList[index].title, style: TextStyle(color: Colors.black87,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    subtitle: Text(todo.taskList[index].detail, style: TextStyle(color: Colors.black87,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    trailing: Icon(Icons.check_circle, color: Colors.green),
                                  ),
                            );
                          }
                      );
                    },
                  )
              )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[900],
        onPressed: (){
          Provider.of<TodoModel>(context).addTaskInList();
        },
      ),
    );
  }
}