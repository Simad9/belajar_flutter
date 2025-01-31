import 'package:flutter/material.dart';
import 'LoginPage.dart';

class DaftarPage extends StatelessWidget {
  const DaftarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Color(0xFFF9F9FB),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Selamat Datang!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Pake emailmu dan password untuk ",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "Daftar",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 25),
            formInput(hint: "Nama", icon: Icons.person_outline),
            SizedBox(height: 10),
            formInput(hint: "Email", icon: Icons.email_outlined),
            SizedBox(height: 10),
            formInput(hint: "Password", icon: Icons.lock_outline),
            SizedBox(height: 10),
            formInput(hint: "Re-Password", icon: Icons.lock_outline),
            SizedBox(height: 10),
            Align(
                alignment: Alignment.centerRight,
                child: Text("Lupa password?",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
            SizedBox(height: 25),
            SizedBox(width: double.infinity, child: buttonPrimary("Daftar")),
            SizedBox(height: 25),
            Text("Atau Masuk pake", style: TextStyle(fontSize: 14)),
            SizedBox(height: 25),
            SizedBox(
                width: double.infinity,
                child: buttonGoogle("Daftar dengan Google")),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Kamu belum punya akun? "),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Masuk",
                    style: TextStyle(fontWeight: FontWeight.w600)),
              )
            ]),
          ],
        ),
      ),
    );
  }

  Widget formInput({required String hint, required IconData icon}) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Container(
                padding: EdgeInsets.all(10),
                child: Icon(icon, color: Color(0xFFBFC3C4)),
              ),
              hintText: hint,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFBFC3C4)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFFBFC3C4)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color.fromARGB(255, 88, 91, 91)),
              )),
        ),
      ],
    );
  }

  Widget buttonPrimary(String text) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          backgroundColor: Color(0xFF4CA2FF),
        ),
        child: Text(text,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)));
  }

  Widget buttonGoogle(String text) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide(color: Color(0xFF4CA2FF)),
      ),
      icon: Image.asset('assets/google.png', width: 16),
      label: Text(
        text,
        style: TextStyle(color: Color(0xFF4CA2FF)),
      ),
    );
  }
}
