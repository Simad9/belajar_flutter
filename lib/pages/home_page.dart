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
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) {
                return habit();
              },
            ),
          ),

          // --- NAVBAR ---
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navButton(Icons.dashboard, "Generate"),
                _navButton(Icons.trending_up, "Stats"),
                _navButton(Icons.settings, "Settings"),
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
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text("Habit Tracker", style: TextStyle(color: Colors.white)),
    );
  }

  // Widget untuk Navbar Button
  Widget _navButton(IconData icon, String label) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon), Text(label)],
      ),
    );
  }
}
