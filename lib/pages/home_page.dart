import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

                // Judul dan Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Jika ingin benar-benar hilang, gunakan SizedBox.shrink()
                    SizedBox.shrink(),
                    Text("Habit Tracker",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Image.asset('assets/logo/tambah.png', width: 30),
                  ],
                ),
              ],
            ),
          ),

          // --- LIST HABIT (BISA DISCROLL) ---
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return habit();
              },
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
                    backgroundColor: Color(0xFF4CA2FF),
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
                      Image.asset('assets/logo/generate_navbar.png', width: 30),
                      Text("Generate", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                _navButtonActive(Icons.dashboard_rounded, "Dashboard"),
                _navButton(Icons.account_box_rounded, "Profile"),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Widget untuk Habit Item
  Widget habit() {
    return Container(
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
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF4CA2FF), width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text("Social",
                    style: TextStyle(fontSize: 12, color: Color(0xFF4CA2FF))),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Belajar Express.Js",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Color(0xff28B856), width: 2),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_rounded, color: Color(0xff28B856)),
                      Text(" Selesai",
                          style: TextStyle(color: Color(0xff28B856))),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff28B856),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle_outline_rounded,
                          color: Colors.white),
                      Text(" Selesai", style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
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

  Widget _navButtonActive(IconData icon, String label) {
    return ElevatedButton(
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
          Icon(icon, color: Color(0xFF4CA2FF), size: 36),
          Text(label, style: TextStyle(color: Color(0xFF4CA2FF)))
        ],
      ),
    );
  }
}
