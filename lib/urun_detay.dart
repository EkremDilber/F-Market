// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String urunadi;
  final String fiyat;
  final String resimYolu;
  final bool mevcut;

  const UrunDetay(
      {super.key,
      required this.urunadi,
      required this.fiyat,
      required this.resimYolu,
      required this.mevcut});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(
              tag: urunadi,
              child: Image.network(
                resimYolu,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 32.0,
                ))
          ],
        ),
        SizedBox(height: 20.0),
        Column(
          children: [
            Text(
              urunadi,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              fiyat,
              style: TextStyle(
                color: Colors.red[400],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Text(
                "Bu bölümde ürün açıklaması bulunacak. Ürünün sahip olduğu özellikler hakkında bilgi verecek.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.red[100],
                highlightColor: Colors.red[50],
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: mevcut ? Colors.red[400] : Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        mevcut ? "Sepete Ekle" : "Stokta Yok",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
