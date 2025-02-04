import 'package:flutter/material.dart';
import 'package:belajar_flutter/kumpulan/final_project.dart';

class GenerateClickPage extends StatelessWidget {
  const GenerateClickPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // --- HEADER ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Header atas
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hello, ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "Wijdan",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Icon(Icons.notifications_none_outlined),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Anda Bingung?",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Silahkan klik Generate untuk menemukan habit baru",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFF4CA2FF), width: 3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFF4CA2FF), width: 2),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text("Social",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xFF4CA2FF))),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Belajar Express.Js",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Tambah Habit",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // --- NAVBAR ---
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Color(0xFF4CA2FF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                    // shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logo/generate_navbar_active.png',
                        width: 30,
                      ),
                      Text("Generate",
                          style: TextStyle(color: Color(0xFF4CA2FF)))
                    ],
                  ),
                ),
                _navButton(
                  context,
                  Icons.dashboard_rounded,
                  "Dashboard",
                  HomePage(),
                ),
                _navButton(
                  context,
                  Icons.account_box_rounded,
                  "Profile",
                  ProfilePage(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget untuk Navbar Button
  Widget _navButton(
      BuildContext context, IconData icon, String label, Widget widget) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF4CA2FF),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        // shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 36,
          ),
          Text(label, style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
