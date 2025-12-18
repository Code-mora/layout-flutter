import 'package:flutter/material.dart';
import 'add_task_screen.dart'; // Pastikan import file yang tadi kita buat

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final List<String> tugas = []; // Nanti list ini bisa diisi data asli

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task App'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      // PERBAIKAN: Gunakan kondisi if-else yang benar di dalam body
      body: tugas.isEmpty
          ? const Center(
              child: Text('Tugas masih kosong'),
            )
          : ListView.builder(
              itemCount: tugas.length, // Gunakan panjang list asli
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.check_box_outline_blank),
                title: Text(tugas[index]),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTugas = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaskScreen()),
          );

          // jika ada data tugas baru, tambahkan ke task
          if (newTugas != null) {
            setState(() {
              tugas.add(newTugas);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}