import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({Key? key, required this.nama, required this.nim, required this.tahun}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Text("Nama saya $nama, NIM $nim, dan umur saya adalah ${DateTime.now().year-tahun} tahun"),
        )
        
        )
    );
  }
}
