import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// --- HALAMAN LOGIN ---
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> cekLogin() async {
    setState(() {
      isLoading = true;
    });

    Map<String, dynamic> dataUser = {
      "username": usernameController.text,
      "password": passwordController.text,
    };

    var uri = Uri.parse("https://fakestoreapi.com/auth/login");
    try {
      var respon = await http.post(uri, body: dataUser);
      if(respon.statusCode == 201) {
        Navigator.pushReplacementNamed(context, "/product");
      } else {
        throw Exception("Usename dan Password salah");
      }
    } catch (e) {
      // munculkan snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    // Scaffold memberikan struktur dasar halaman
    return Scaffold(
      body: Center(
        // SingleChildScrollView mencegah error saat keyboard muncul
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // 1. JUDUL "SELAMAT DATANG"
              const Text(
                'SELAMAT DATANG',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),

              // 2. INPUT USERNAME
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Masukkan username',
                  // Menghilangkan border default
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // 3. INPUT PASSWORD
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Masukkan password',
                  border: UnderlineInputBorder(),
                ),
                // Menyembunyikan input (sesuai standar password)
                obscureText: true,
              ),
              const SizedBox(height: 40),

              // 4. TOMBOL "MASUK"
              ElevatedButton(
                onPressed: isLoading ? null :cekLogin,

                // Memberikan warna ungu pada tombol (sesuai contoh)
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text("Masuk"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
