// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

import 'mahasiswa_detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  String? _nama;
  String? _nrp;
  String? _email;
  String? _noHp;
  String? _alamat; // tugas 4

  var _textNamaController = TextEditingController();
  var _textNrpController = TextEditingController();
  var _textEmailController = TextEditingController();
  var _textNoHpController = TextEditingController();
  var _textAlamatController = TextEditingController(); //tugas 4

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFieldName() {
    return TextFormField(
      controller: _textNamaController,
      decoration: InputDecoration(labelText: 'Nama'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Nama dibutuhkan';
        }
        return null;
      },
      onSaved: (String? value) {
        _nama = value!;
      },
    );
  }

  Widget _buildFieldNrp() {
    return TextFormField(
      controller: _textNrpController,
      decoration: InputDecoration(labelText: 'NRP'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'NRP dibutuhkan';
        }
        return null;
      },
      onSaved: (String? value) {
        _nrp = value!;
      },
    );
  }

  Widget _buildFieldEmail() {
    return TextFormField(
      controller: _textEmailController,
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email dibutuhkan';
        }
        return null;
      },
      onSaved: (String? value) {
        _email = value!;
      },
    );
  }

  Widget _buildFieldNoHp() {
    return TextFormField(
      controller: _textNoHpController,
      decoration: InputDecoration(labelText: 'No HP'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'No HP dibutuhkan';
        }
        return null;
      },
      onSaved: (String? value) {
        _noHp = value!;
      },
    );
  }

  Widget _buildFieldAlamat() {
    return TextFormField(
      controller: _textAlamatController,
      decoration: InputDecoration(labelText: 'Alamat'),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Alamat dibutuhkan';
        }
        return null;
      },
      onSaved: (String? value) {
        _noHp = value!;
      },
    );
  } // tugas 4

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Mahasiswa')),
      body: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildFieldName(),
                _buildFieldNrp(),
                _buildFieldEmail(),
                _buildFieldNoHp(),
                _buildFieldAlamat(), // tugas 4
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    final field = _formKey.currentState;

                    if (field != null && !field.validate()) {
                      return;
                    }
                    _formKey.currentState?.save();

                    print(_nama);
                    print(_nrp);
                    print(_email);
                    print(_noHp);
                    print(_alamat); // tugas 4

                    var route = new MaterialPageRoute(
                        builder: (BuildContext context) => NextPage(
                              nama: _textNamaController.text,
                              nrp: _textNrpController.text,
                              email: _textEmailController.text,
                              noHp: _textNoHpController.text,
                              alamat: _textAlamatController.text,
                            ));
                    Navigator.of(context).push(route);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
