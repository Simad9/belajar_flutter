import 'package:belajar_flutter/kumpulan/final_project.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const BelajarAplikasi());
}

class BelajarAplikasi extends StatefulWidget {
  const BelajarAplikasi({super.key});

  @override
  State<BelajarAplikasi> createState() => _BelajarAplikasiState();
}

class _BelajarAplikasiState extends State<BelajarAplikasi> {
  // @override
  // void initState() {
  //   super.initState();
  //   initialization();
  // }

  // void initialization() async {
  //   print("pausing...");
  //   await Future.delayed(const Duration(seconds: 3));
  //   print("unpausing");
  //   FlutterNativeSplash.remove();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // Hilangkan tulisan DEBUG
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        home: HomePage());
  }
}
