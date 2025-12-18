import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_app_overwrite/pages/task_data.dart';

class AddTaskProvider extends StatefulWidget {
  const AddTaskProvider({super.key});

  @override
  State<AddTaskProvider> createState() => _AddTaskProviderState();
}

class _AddTaskProviderState extends State<AddTaskProvider> {
  final TextEditingController tugasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: tugasController,
              decoration: const InputDecoration(
                labelText: 'Task Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(
                  context,
                  listen: false,
                ).tambahTugas(tugasController.text);
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
