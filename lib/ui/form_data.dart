import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({super.key});

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _tahunController = TextEditingController();

  dynamic _dataField (TextEditingController controller, String label){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: label),
      ),
    );
  }
  
  void simpan(){
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TampilData(
            nama: _namaController.text,
            nim: _nimController.text,
            tahun: int.parse(_tahunController.text),
      )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body : SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              _dataField(_namaController, 'Nama'),
              _dataField(_nimController, 'NIM'),
              _dataField(_tahunController, 'Tahun Lahir'),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 140),
                child: ElevatedButton(
                onPressed: (){
                  simpan();
                  }, 
                  child: const Text("Simpan"),
                )
                ),              
            ],
          ),
        )
        )
    );
  }
}
