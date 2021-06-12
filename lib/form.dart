import 'package:flutter/material.dart';

class FormReader extends StatefulWidget {  
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormReader> {
  String _title = 'Pengisian Data Pembeli';
  List<String> provinsi= ["Jawa Barat", "Jawa Tengah", "Yogyakarta", "Banten", "Jakarta", "Jawa Timur", "Luar Jawa"];
  String _provinsi = 'Jawa Barat';
  String _gender = "";

  TextEditingController cName = TextEditingController();
  TextEditingController cNotelp = TextEditingController();
  TextEditingController cAddress = TextEditingController();
  TextEditingController cBayar = TextEditingController();

  void _result(String value) {
    setState(() {
      _gender = value;
    });
  }

  void resultprov(String value) {
    setState(() {
      _provinsi = value;
    });
  }

  void resultform() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        padding: EdgeInsets.all(5.0),
        alignment: Alignment.center,
        color: Colors.deepOrange[300],
        height: 300,
        child: Column(
          children: [
            Text("Hi, ${cName.text}", style: TextStyle(fontSize: 26, color: Colors.white)),
            Text(" "),
            Text("Cek data anda!", style: TextStyle(fontSize: 24, color: Colors.white)),
            Text(" "),
            Text("Nama Anda : ${cName.text}"),
            Text("No telp : ${cNotelp.text}"),
            Text("Alamat : ${cAddress.text}"),
            Text("Provinsi : $_provinsi"),
            Text("Jenis Kelamin : $_gender"),
            Text("Pembayaran melalui : ${cBayar.text}"),
            OutlinedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('OK'))
          ],
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(_title),
        ),

        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            Container(
              child: Column(
              children: [
                Image.network('https://id.dvlottery.me/img/blog/DS260_form.jpg', width: 350,
                ),

                Padding(padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: cName,
                  decoration: InputDecoration(
                      icon: Icon(Icons.people_outlined),
                      hintText: 'masukkan nama anda',
                      labelText: 'your name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                        ),
                        ),
                      ),
                Padding(padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: cNotelp,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      icon: Icon(Icons.phone_android_rounded),
                      hintText: 'masukkan nomor telepon',
                      labelText: 'your telp',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                        ),
                        ),
                      ),
                Padding(padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: cAddress,
                  decoration: InputDecoration(
                      icon: Icon(Icons.home_work_rounded),
                      hintText: 'masukkan alamat anda',
                      labelText: 'your address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                        ),
                        ),
                      ),
                
                Padding(padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  controller: cBayar,
                  decoration: InputDecoration(
                      icon: Icon(Icons.money),
                      hintText: 'pembayaran melalui...',
                      labelText: 'your payment',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                        ),
                        ),
                      ),

                Padding(padding: const EdgeInsets.only(top: 2),
                child: RadioListTile(
                  value: "Perempuan", title: Text("Perempuan"),
                  groupValue: _gender,
                  onChanged: (String value){
                    _result(value);
                  },
                ),
                ),

                Padding(padding: const EdgeInsets.only(top: 2),
                child: RadioListTile(
                  value: "Laki-Laki", title: Text("Laki-Laki"),
                  groupValue: _gender,
                  onChanged: (String value){
                    _result(value);
                  },
                ),
                ),

                Padding(padding: EdgeInsets.all(2.0),
                ),
                DropdownButton(
                  value: _provinsi,
                  items: provinsi.map((String value){
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                      );
                  }).toList(),
                  onChanged: (String value){
                    resultprov(value);
                  },
                ),

                  Padding(padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                      child: Text('click me'),
                      onPressed: () {
                        resultform();
                          })
                        )
                      ]),
                    ),            
                  ]
                )
              );
            }
          }