import 'package:flutter/material.dart';

class ListView_Kullanimi extends StatelessWidget {
   ListView_Kullanimi({super.key});

List<Ogrenci> tumOgrenciler = List.generate(500, (index) => Ogrenci(index +1 , 'isim ${index+1 }', 'Soyisim ${index+2 }'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Yapisi')),
      body: ListViewSeparated(),
    );
  }

  ListView ListViewSeparated() {
    return ListView.separated(itemBuilder: (BuildContext context, int  index){
    var OankiOgrenci = tumOgrenciler[index];
    return Card(
      color: Colors.blue,
      shadowColor: Colors.green,
      elevation: 12,
      child: ListTile(
        onTap: () {
          print('Eleman tiklandi indexi: $index');
        },
      title: Text(tumOgrenciler[index].isim),
      subtitle: Text(OankiOgrenci.Soyisim),
      leading: CircleAvatar(
        child: Text(OankiOgrenci.id.toString())
        )
        ),
    );
  } ,itemCount: tumOgrenciler.length,
  //builder ile tek farklı kısmı burası
  separatorBuilder: (contex,index){
    var yeniIndex = index+1 ;

    if (yeniIndex % 4 ==0){
            return Divider(
      thickness: 2,
      color: Colors.green,
    );
    }
    return SizedBox();
  },
  );
  }

  ListView ListViewBuilder() {
    return ListView.builder(itemBuilder: (BuildContext context, int  index){
      var OankiOgrenci = tumOgrenciler[index];

      return Card(
        color: Colors.blue,
        shadowColor: Colors.green,
        elevation: 12,
        child: ListTile(
          onTap: () {
            print('Eleman tiklandi indexi: $index');
          },
        title: Text(tumOgrenciler[index].isim),
        subtitle: Text(OankiOgrenci.Soyisim),
        leading: CircleAvatar(
          child: Text(OankiOgrenci.id.toString())
          )
          ),
      );
    } ,itemCount: tumOgrenciler.length,);
  }

  ListView KlasikListView() {
    return ListView(
      children: tumOgrenciler.map((Ogrenci ogr) => ListTile(
        title: Text(ogr.isim),
        subtitle: Text(ogr.Soyisim),
        leading: CircleAvatar(child: Text(ogr.id.toString()),),
      )).toList(),
    );
  }
}

class Ogrenci{
  final int id;
  final String isim;
  final String Soyisim;
  Ogrenci(this.id,this.isim,this.Soyisim);

}