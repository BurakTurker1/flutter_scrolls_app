import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
          EasyLoading.showToast('Eleman tiklandi',toastPosition: EasyLoadingToastPosition.bottom,duration: Duration(seconds: 3),dismissOnTap: true );
        },
        onLongPress: () {
          _alertDialogIslemleri(context,OankiOgrenci);
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
  
  void _alertDialogIslemleri(BuildContext MyContext,Ogrenci secilenOgr) {
    showDialog(
      barrierDismissible: false, //boşluga basılarak kapatılmasını engelliyo
      context: MyContext, 
      builder: (BuildContext context){
      return AlertDialog(
        title: Text(secilenOgr.toString()),
        content: SingleChildScrollView(
          child:  ListBody(children: [
              Text('burak'*100),
              Text('burak2'*100),
              Text('burak3'*100),
          ],),
        ),
        actions: [
          ButtonBar(
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Tamam')),
              TextButton(onPressed: (){}, child: Text('Kapat')),
            ],
          ),
        ],
      );
    });
  }
}

class Ogrenci{
  final int id;
  final String isim;
  final String Soyisim;
  Ogrenci(this.id,this.isim,this.Soyisim);

@override
  String toString() {
    return 'Ad: $isim Soyad: $Soyisim id $id' ;
  }
}