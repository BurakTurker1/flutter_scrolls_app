import 'package:flutter/material.dart';

class ListViewProblemleri extends StatelessWidget {
  const ListViewProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Problemleri')),
      body: Container(
        height: 200,
        decoration: BoxDecoration(border: Border.all(width: 4,color: Colors.blue,style: BorderStyle.solid)),
        child: ListViewRowHatasi(),
      ),
    );
  }

  Row ListViewRowHatasi() {
    return Row(
        children: [
           Text('Basladi'),
           Expanded(
             child: ListView(
                  scrollDirection: Axis.horizontal,// YATAY ListView
                  children: [
                    Container(
                      width: 200,
                      color: Colors.amber.shade300,
                    ),
                    Container(
                      width: 200,
                      color: Colors.amber.shade400,
                    ),
                    Container(
                      width: 300,
                      color: Colors.amber.shade600,
                    ),
                  ],
                ),
           ),
           Text('Bitti'),
        ],
      );
  }

  Column ListViewColumnHatasi() {
    /* 
    hatanın sebebi  listview ın yüksekligi sonsuz oldugu için ve sınırlandırılmadıgi için colum un sınırlarını aşıyo ve bu hatayla karşılaşıyoruz çözümünün de birden fazla yolu var yol 1. aşagıda uygulandıgı gibi iki tane wigets oluşturup(Bu örnekteki başladı ve bitti texleri) listview ın bu iki wigets arasında expanded edilemesi  2.yol eger listview içindeki elemanlar telefon ekranına sıgıyosa " shrinkWrap: True" yapılabilir ama elemanlar sıgmazsa taşma hatası alırsın
    */
    return Column(
        children: [
          Text('Başladi'),
          Expanded(
            child: ListView(
              //shrinkWrap: true, // bu true ise listview içindeki elemanlar kadar yer kaplar kapalıysa tüm alana yayılır
              children: [
                Container(
                  height: 200,
                  color: Colors.amber.shade300,
                ),
                Container(
                  height: 200,
                  color: Colors.amber.shade400,
                ),
              ],
            ),
          ),
          Text('Bitti'),
        ],
      );
  }
}