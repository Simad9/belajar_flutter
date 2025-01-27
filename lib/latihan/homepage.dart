import 'package:belajar_flutter/latihan/profilepage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final String username;
  const Homepage({super.key, required this.username});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String _namaLengkap = "";
  String _email = "";
  String _nomorHP = "";
  String _alamatRumah = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Halaman Utama"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Selamat Datang \n${widget.username}",
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 24)),
              SizedBox(height: 24),
              Text("Lengkapi Biodata"),
              SizedBox(height: 12),
              _buildForm(),
              SizedBox(height: 24),
              _buildButtonSubmit(),
            ],
          ),
        ));
  }

  Widget _formInput(
      {required String hint,
      required String label,
      required Function(String value) setStateInput,
      int maxLines = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLines,
      keyboardType: maxLines > 1 ? TextInputType.multiline : TextInputType.text,
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          contentPadding: const EdgeInsets.all(12.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.blue),
          )),
      onChanged: setStateInput,
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        SizedBox(height: 12),
        _formInput(
            hint: "Masukan Nama Lengkap",
            label: "Nama : ",
            setStateInput: (value) {
              setState(() {
                _namaLengkap = value;
              });
            }),
        SizedBox(height: 12),
        _formInput(
            hint: "Masukan No HP",
            label: "No HP : ",
            setStateInput: (value) {
              setState(() {
                _nomorHP = value;
              });
            }),
        SizedBox(height: 12),
        _formInput(
            hint: "Masukan Email",
            label: "Email : ",
            setStateInput: (value) {
              setState(() {
                _email = value;
              });
            }),
        SizedBox(height: 12),
        _formInput(
            hint: "Masukan Alamat Rumah",
            label: "Alamat Rumah : ",
            setStateInput: (value) {
              setState(() {
                _alamatRumah = value;
              });
            },
            maxLines: 3)
      ],
    );
  }

  Widget _buildButtonSubmit() {
    return ElevatedButton(
        onPressed: () {
          if (_namaLengkap == "" || _email == "" || _nomorHP == "") {
            SnackBar snackBar =
                SnackBar(content: Text("* data tidak boleh Kosong"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage(
                nama: _namaLengkap,
                username: widget.username,
                email: _email,
                nomor: _nomorHP,
                alamat: _alamatRumah,
              );
            }));
          }
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32)),
        child: Text("Submit"));
  }
}
