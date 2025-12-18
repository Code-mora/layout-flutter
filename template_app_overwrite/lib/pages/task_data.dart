import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  final List<String> _tugas = [];

  // method tambah tugas
  void tambahTugas(String tugasBaru) {
    _tugas.add(tugasBaru);
    notifyListeners();
  }

  // method hapus tugas
  void hapusTugas(int noUrut) {
    _tugas.removeAt(noUrut);
    notifyListeners();
  }

  // ambil seluruh data tugas
  List<String> get listTugas => _tugas;

  // ambil jumlah tugas
  int get jumlahTugas => _tugas.length;
}