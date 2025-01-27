import 'package:flutter/material.dart';
import '../kumpulan/latihan.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String username;
  final String email;
  final String nomor;
  final String alamat;

  const ProfilePage(
      {super.key,
      required this.nama,
      required this.username,
      required this.email,
      required this.nomor,
      required this.alamat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Profile")),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Center(
          child: Column(
            children: [
              Text("Biodata",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 24),
              FlutterLogo(size: 150),
              SizedBox(height: 12),
              Text(nama,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Text(nomor,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Text(email,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Text(alamat,
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Kembali")),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }), (route) => false);
                      },
                      child: Text("Logout"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
