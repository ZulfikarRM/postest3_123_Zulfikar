import 'package:flutter/material.dart'; 


        class DetailPage extends StatelessWidget {
        
          DetailPage({required this.name, required this.jenis, required this.harga});
        
          String name;
          String jenis;
          String harga;
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Halaman Output"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name), 
                    Text(jenis),
                    Text(harga)
                  ],
                )
              ),
            );
          }
        }