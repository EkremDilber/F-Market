// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Center(
        child: Text(
          "Sepetim",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      ListTile(
        title: Text("Süt"),
        subtitle: Text("2 adet x 10.49 TL"),
        trailing: Text("20,98 TL"),
      ),
      ListTile(
        title: Text("Peynir"),
        subtitle: Text("1 adet x 14.99 TL"),
        trailing: Text("14,99 TL"),
      ),
      ListTile(
        title: Text("Çubuk Çikolata"),
        subtitle: Text("8 adet x 5,49 TL"),
        trailing: Text("43,92 TL"),
      ),
      ListTile(
        title: Text("Çorba"),
        subtitle: Text("4 adet x 11,6TL"),
        trailing: Text("16,98 TL"),
      ),
      ListTile(
        title: Text("Makarna"),
        subtitle: Text("2 adet x 8.49 TL"),
        trailing: Text("16,98 TL"),
      ),
      ListTile(
        title: Text("Diş Fırçası"),
        subtitle: Text("2 adet x 5,90 TL"),
        trailing: Text("11,80 TL"),
      ),
      ListTile(
        title: Text("Diş Macunu"),
        subtitle: Text("1 adet x 15,90 TL"),
        trailing: Text("15,90 TL"),
      ),
      SizedBox(height: 20.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Column(
              children: [
                Text(
                  "Toplam Tutar",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "158,53 TL",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 30.0),
      Material(
        color: Colors.white,
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
                color: Colors.red[400],
              ),
              child: Center(
                child: Text(
                  "Alışverişi Tamamla",
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
    ]);
  }
}
