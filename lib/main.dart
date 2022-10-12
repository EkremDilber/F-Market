// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urunler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red[700], // Status Bar rengi
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fmarket',
      theme: ThemeData(),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerikNo = 0;
  List<Widget> _icerikler = [
    Urunler(),
    Sepetim(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Ekrem Dilber"),
                accountEmail: Text("ekremdilber@gmail.com"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/04/02/10/25/man-303792_960_720.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.red[700],
                ),
              ),
              ListTile(
                title: Text("Siparişlerim"),
                onTap: () {},
              ),
              ListTile(
                title: Text("İndirimlerim"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Ayarlar"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Çıkış Yap"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(color: Colors.red[400]),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "",
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        body: _icerikler[_aktifIcerikNo],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _aktifIcerikNo,
          selectedItemColor: Colors.red[400],
          unselectedItemColor: Colors.grey[600],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ürünler"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Sepetim")
          ],
          onTap: (int tiklananButonPozisyonNo) {
            setState(() {
              _aktifIcerikNo = tiklananButonPozisyonNo;
            });
          },
        ));
  }
}
