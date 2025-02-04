import 'package:flutter/material.dart';
import 'package:belajar_flutter/kumpulan/final_project.dart';

class GeneratePage extends StatefulWidget {
  const GeneratePage({super.key});

  @override
  State<GeneratePage> createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
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
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4CA2FF),
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GenerateClickPage();
                      }));
                    },
                    icon: Image.asset("assets/logo/generate.png", width: 20),
                    label: Text(
                      "Generate",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
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
                _navButton(Icons.dashboard_rounded, "Dashboard"),
                _navButton(Icons.account_box_rounded, "Profile"),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget untuk Navbar Button
  Widget _navButton(IconData icon, String label) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF4CA2FF),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        // shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
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

  // Widget _navButtonActive(IconData icon, String label) {
  //   return ElevatedButton(
  //     style: ElevatedButton.styleFrom(
  //       backgroundColor: Colors.white,
  //       padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
  //       // shadowColor: Colors.transparent,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //     ),
  //     onPressed: () {},
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Icon(icon, color: Color(0xFF4CA2FF), size: 36),
  //         Text(label, style: TextStyle(color: Color(0xFF4CA2FF)))
  //       ],
  //     ),
  //   );
  // }
}
