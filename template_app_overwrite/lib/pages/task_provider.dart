import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_app_overwrite/pages/task_data.dart';
import 'package:template_app_overwrite/pages/add_task_provider.dart';

class TaskProvider extends StatelessWidget {
  const TaskProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Provider - ${Provider.of<TaskData>(context).jumlahTugas}",
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Consumer<TaskData>(
        builder: (context, tugasData, child) => ListView.builder(
          itemCount: tugasData.jumlahTugas,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: Text(tugasData.listTugas[index]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaskProvider()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
