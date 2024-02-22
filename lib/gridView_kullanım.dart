import 'package:flutter/material.dart';

class GridView_Kullanim extends StatelessWidget {
  const GridView_Kullanim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text('GridView')),
    body: GridView.builder(
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (BuildContext context,int index){
        return Container(
          alignment: Alignment.center,
          color: Colors.amber[100 *((index+1) %9)],
          margin: EdgeInsets.all(20),
          child: Text('İndex $index'),
        );
       }),
    ); 
  }

  GridView gridViewExtentOrnek() {
    return GridView.extent(
    maxCrossAxisExtent: 300, //Gridlerin boyutları ne kadar büyür ise  görünen  gird sayısı azalır
  primary: false, // True ise scroll yapmana gerek olmadıgı zamanda bile scroll yapmaya açlışıyo 
  scrollDirection: Axis.vertical , //scroll yönünü belirtiyo
  padding: EdgeInsets.all(10),
  crossAxisSpacing: 20, //Yatydaki gridler arasındaki boşluk
  mainAxisSpacing: 10,//dikeydeki gridler arasındaki boşluk
  children: [
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.blueGrey.shade500,
      child: Text('Burak',textAlign: TextAlign.center),
    ),
  ],
  );
  }

  GridView gridViewCountOrnek() {
    return GridView.count(
    crossAxisCount: 3,
    primary: false, // True ise scroll yapmana gerek olmadıgı zamanda bile scroll yapmaya açlışıyo 
    scrollDirection: Axis.horizontal , //scroll yönünü belirtiyo
    padding: EdgeInsets.all(10),
    crossAxisSpacing: 20, //Yatydaki gridler arasındaki boşluk
    mainAxisSpacing: 10,//dikeydeki gridler arasındaki boşluk
    children: [
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),
      Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade500,
        child: Text('Burak',textAlign: TextAlign.center),
      ),

    ],
    );
  }
}