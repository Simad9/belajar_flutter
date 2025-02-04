import 'package:belajar_flutter/kumpulan/final_project.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // --- HEADER ---
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF4CA2FF), width: 3),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          5.0), // Add padding to create space between border and image
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/logo/google.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Wijdan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4CA2FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                SizedBox(height: 25),

                // --- NAVBAR ---
                _listProfile(
                  context,
                  Icons.person,
                  "Edit Akun",
                  EditAkunPage(),
                ),
                SizedBox(height: 15),
                _listProfile(
                  context,
                  Icons.list_rounded,
                  "List Habits",
                  ListHabitsPage(),
                ),
                SizedBox(height: 15),
                _listProfile(
                  context,
                  Icons.image_rounded,
                  "Album Saya",
                  AlbumPage(),
                ),
                SizedBox(height: 15),

                // --- LOGOUT ---
                _listProfile(
                    context, Icons.logout_rounded, "Keluar", MasukPage(),
                    color: Color(0xffE74141))
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
                _navButton(Icons.dashboard_rounded, "Dashboard"),
                _navButtonActive(Icons.account_box_rounded, "Profile"),
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

  // Isi Profile
  Widget _listProfile(
      BuildContext context, IconData icon, String label, Widget widget,
      {Color color = Colors.black}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 24, color: color),
              SizedBox(width: 10),
              Text(
                label,
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500, color: color),
              ),
            ],
          ),
          Transform.rotate(
            angle: 3.14159, // 180 degrees in radians
            child: Icon(Icons.arrow_back_ios_rounded, size: 20, color: color),
          ),
        ],
      ),
    );
  }
}
