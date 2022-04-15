import 'package:flutter/material.dart';
    import 'detail_page.dart';
    
    void main() {
      runApp(MaterialApp(
        title: "Postest 3 Zulfikar",
        home: MyApp(),
      ));
    }
    
    class MyApp extends StatefulWidget {
      @override
      _MyApp createState() => _MyApp();
    }
    
    class _MyApp extends State<MyApp> {
      
      final _formKey = GlobalKey<FormState>();
    
      final name = TextEditingController();
      final jenis = TextEditingController();
      final harga = TextEditingController();
      bool? garansi = false;
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.home),
            title: Text("Postest 3 Zulfikar"),
          ),

          body: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Ketik nama barang",
                      labelText: "Nama Barang",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama barang tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: jenis,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        labelText: 'Jenis',
                        hintText: 'Jenis apa'
                    ),
                     validator: (value) {
                      if (value!.isEmpty) {
                        return 'Jenis tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: harga,
                    decoration: InputDecoration(
                      hintText: "Masukkan Harga Barang",
                      labelText: "Harga Barang",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Harga barang tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  Checkbox(
                    value: garansi,
                    onChanged: (bool? value){
                      setState(() {
                        garansi = value;
                      });
                    },
                  ),
                  Text('Garansi'),
                  ElevatedButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (_) => DetailPage(name: name.text, jenis: jenis.text, harga: harga.text)
                          )
                        );
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }
    }