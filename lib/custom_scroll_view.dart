import 'dart:math' as mat;

import 'package:flutter/material.dart';

class CustomScrollView_ornek extends StatelessWidget {
  const CustomScrollView_ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          //title: Text('Custom ScrollView Başlik',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.brown,
          expandedHeight: 200,
          floating: true, // true ise yukarı kaydırdıgın an appbar gelir false ise en yukarı cıktıgında gelir
          pinned: true, // asagıya kaydırsan bile içinde başlıgın bulundugu bir appbar kalır 
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text('Custom ScrollView',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            background:Image.asset('assets/images/kedi2.jpg',fit: BoxFit.fill),

          ) 
        ),
        
        //
         SliverList(delegate: SliverChildListDelegate(SabitListeElemanlari)),
         //
         SliverList(delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,childCount: 2)),
         //
        SliverFixedExtentList(delegate: SliverChildListDelegate(SabitListeElemanlari), itemExtent: 300),
        //
        SliverFixedExtentList(delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,childCount: 10), itemExtent: 50),
        //sabit elemanlarla bir satırda kaç elemanı olacagını söyledigimiz grid türü
        SliverGrid(delegate: SliverChildListDelegate(SabitListeElemanlari), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        //Dinamik(Builder ile üretildi) elemanlarla bir satırda kaç elemanı olacagını söyledigimiz grid türü
        SliverGrid(delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon , childCount: 10), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
        //sabit elemanlarla bir satırda kaç elemanı olacagını kendi belirleyen grid türü
        SliverGrid(delegate:SliverChildListDelegate(SabitListeElemanlari) , gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100)),
        //Dinamik(Builder ile üretildi) elemanlarla bir satırda kaç elemanı olacagını kendi belirleyen grid türü
        SliverGrid(delegate:SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon , childCount: 10) , gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150)),
        //dinamik olamayan  count  sliver grid
        SliverGrid.count(crossAxisCount: 6, children: SabitListeElemanlari),
        //dinamik olamayan  extent  sliver grid
        SliverGrid.extent(maxCrossAxisExtent: 400, children: SabitListeElemanlari),

      ],
    );
  }

  List<Widget> get SabitListeElemanlari {
    return [
          Container(height: 150,child: Text('Sabit Liste Elemani 1',style: TextStyle(fontSize: 26,color: Colors.white),),color:RasgeleRenkUret() , alignment: Alignment.center,),
          Container(height: 150,child: Text('Sabit Liste Elemani 2',style: TextStyle(fontSize: 26,color: Colors.white),),color:RasgeleRenkUret(), alignment: Alignment.center,),
          Container(height: 150,child: Text('Sabit Liste Elemani 3',style: TextStyle(fontSize: 26,color: Colors.white),),color:RasgeleRenkUret(), alignment: Alignment.center,),
          Container(height: 150,child: Text('Sabit Liste Elemani 4',style: TextStyle(fontSize: 26,color: Colors.white),),color:RasgeleRenkUret(), alignment: Alignment.center,),
          Container(height: 150,child: Text('Sabit Liste Elemani 5',style: TextStyle(fontSize: 26,color: Colors.white),),color: RasgeleRenkUret(), alignment: Alignment.center,),
          Container(height: 150,child: Text('Sabit Liste Elemani 6',style: TextStyle(fontSize: 26,color: Colors.white),),color: RasgeleRenkUret(), alignment: Alignment.center,),    
        ];
  }

  Widget? _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 150,
      child: Text('Dinamik Liste Elemani $index',
      style: TextStyle(fontSize: 26,color: Colors.white),),
      color: RasgeleRenkUret(), alignment: Alignment.center,);
  }
  
 Color RasgeleRenkUret() {
  return Color.fromARGB(255, mat.Random().nextInt(256), mat.Random().nextInt(256), mat.Random().nextInt(256));
 }
}