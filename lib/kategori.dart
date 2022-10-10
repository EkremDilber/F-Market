// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({super.key, required this.kategori});

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;

  @override
  void initState() {
    super.initState();

    if (widget.kategori == "temel gıda") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Zeytin Yağı",
          "23.49 TL",
          "https://cdn.pixabay.com/photo/2016/05/24/13/29/olive-oil-1412361_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Süt",
          "10,49 TL",
          "https://cdn.pixabay.com/photo/2017/07/05/15/41/milk-2474993_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Yoğurt",
          "11.99 TL",
          "https://cdn.pixabay.com/photo/2016/12/22/10/46/raspberries-1925178_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Peynir",
          "14.99 TL",
          "https://cdn.pixabay.com/photo/2015/02/10/02/42/cheese-630511_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Makarna/pkt",
          "8.49 TL",
          "https://cdn.pixabay.com/photo/2019/11/14/11/23/pasta-4625962_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Çorba/pkt",
          "2,49 TL",
          "https://www.sinamega.com/imagelarge/knorr-corba-ezogelin-corba-12-li-paket_3897_1.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Yumurta 8'li",
          "24,30 TL",
          "https://cdn.pixabay.com/photo/2018/02/26/16/30/eggs-3183410_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Et",
          "115 TL/kg",
          "https://cdn.pixabay.com/photo/2018/02/08/15/02/meat-3139641_960_720.jpg",
          mevcut: true,
        ),
      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Şeker",
          "12,19 TL/kg",
          "https://cdn.pixabay.com/photo/2017/01/04/19/41/candes-1952997_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Bonibon",
          "13,69 TL/kg",
          "https://cdn.pixabay.com/photo/2012/06/27/15/02/candy-50838_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Kalpli Kurabiye",
          "24,90 TL/kg",
          "https://cdn.pixabay.com/photo/2016/09/18/20/25/candy-1678933_960_720.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Şekerli Dondurma",
          "14,19 TL",
          "https://cdn.pixabay.com/photo/2019/11/07/13/05/waffle-4608843_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Çubuk Çikolata",
          "5,49 TL/adet",
          "https://cdn.pixabay.com/photo/2015/03/26/23/09/cake-pops-693645_960_720.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Jelibon",
          "13,29 TL/kg",
          "https://cdn.pixabay.com/photo/2015/12/12/14/57/giant-rubber-bear-1089612_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Kek Çörek",
          "18,49 TL",
          "https://cdn.pixabay.com/photo/2017/09/14/14/33/cupcake-2749204_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Kapkek",
          "8,99/adet TL",
          "https://cdn.pixabay.com/photo/2016/01/11/07/18/cupcakes-1133146_960_720.jpg",
          mevcut: false,
        ),
      ];
    } else if (widget.kategori == "içecekler") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Meyve Suyu",
          "8,99 TL /330ml",
          "https://cdn.pixabay.com/photo/2012/11/28/09/31/orange-juice-67556_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Coca Cola",
          "6,99 TL /330ml",
          "https://www.incillikebap.com.tr/i/l/000/0000043_kutu-kola.jpeg",
          mevcut: true,
        ),
        urunKarti(
          "Limonata",
          "10,99 TL /330ml",
          "https://cdn.pixabay.com/photo/2016/07/22/20/52/cold-drink-1535766_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Ayran",
          "5,49 TL",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/46054715/46054715-8a2faf-1650x1650.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Ice Tea Şeftali",
          "9,49 TL/330ml",
          "https://cdnd-tr.ceptesok.com/product/1000x1000/0021b_Ice_Tea_Seftali_330_Ml..png",
          mevcut: false,
        ),
        urunKarti(
          "Ice Tea Limon",
          "9,49 TL/330ml",
          "https://ayb.akinoncdn.com/products/2022/04/12/3561/7a6e8dcd-b81c-4a9e-b6d9-e4e5976b5758_size780x780_quality60_cropCenter.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Fanta",
          "8,49 TL/330ml",
          "https://images.ofix.com/product-image/s17083_5.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Sprite",
          "7,90 TL/330ml",
          "https://productimages.hepsiburada.net/s/32/375/10364947595314.jpg",
          mevcut: false,
        ),
      ];
    } else if (widget.kategori == "kişisel bakım") {
      gosterilecekListe = <Widget>[
        urunKarti(
          "Diş Macunu",
          "15,90 TL",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/34015543/34015543-7cc0c9-1650x1650.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Diş Fırçası",
          "5,90 TL",
          "https://www.dermoeczanem.com/dentaid-vitis-sensitive-dis-fircasi-hassas-dis-n32381-dentaid-130883-56-B.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Axe Black Deodorant",
          "14,70 TL",
          "https://m.media-amazon.com/images/I/61y4IBK8CBL.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Head & Shoulders Şampuan",
          "24,90 TL/400ml",
          "https://cdn.cimri.io/image/1000x1000/headshoulderskadnlarazelsadklmelerinekaretkilimlampuan_440041878.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Duru Duj Jeli",
          "19,90 TL/250ml",
          "https://productimages.hepsiburada.net/s/26/1500/10165906833458.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Marseillais Duş Jeli",
          "22,90 TL/400ml",
          "https://migros-dali-storage-prod.global.ssl.fastly.net/sanalmarket/product/34370011/34370011-dfd088-1650x1650.jpg",
          mevcut: true,
        ),
      ];
    }
  }

  Widget urunKarti(String urunadi, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      urunadi: urunadi,
                      fiyat: fiyat,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: urunadi,
              child: Container(
                width: 120.0,
                height: 105.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(resimYolu),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              urunadi,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.8, //ızgaraların en boy oranı
      children: gosterilecekListe,
    );
  }
}
