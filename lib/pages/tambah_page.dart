import 'package:belajar_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';
// import '../kumpulan/final_project.dart';

class TambahPage extends StatelessWidget {
  const TambahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Image.asset('assets/logo/tambah.png', width: 30)),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text("Tambah Habit",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "Nama Habit",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20),
              
              TextField(
                decoration: InputDecoration(
                    hintText: "Deskripsi",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    hintText: "Target",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text("Tambah Habit"),
              )
            ]),
      ),
    );
  }
}
