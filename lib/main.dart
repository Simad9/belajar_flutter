import 'package:belajar_flutter/kumpulan/latihan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BelajarAplikasi());
}

class BelajarAplikasi extends StatelessWidget {
  const BelajarAplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, // Hilangkan tulisan DEBUG
        home: LoginPage());
  }
}
