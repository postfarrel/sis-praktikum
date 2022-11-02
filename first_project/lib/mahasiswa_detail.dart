import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  String? nama;
  String? nrp;
  String? email;
  String? noHp;
  String? alamat; // tugas 4

  NextPage(
      {Key? key,
      this.nama,
      this.nrp,
      this.email,
      this.noHp,
      this.alamat}) // tugas 4 alamat
      : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kembali'),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${widget.nama}"),
            Text("${widget.nrp}"),
            Text("${widget.email}"),
            Text("${widget.noHp}"),
            Text("${widget.alamat}"), // tugas 4
          ],
        ),
      )),
    );
  }
}
