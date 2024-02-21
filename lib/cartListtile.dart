import 'package:flutter/material.dart';

class Cartlisttile_Ornek extends StatelessWidget {
  const Cartlisttile_Ornek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card ve list Tile'),),
      body:Center(
        child: singleChildScrollKullan()
        //ListViewKullanimi(),
      ),
    );
  }

  ListView ListViewKullanimi() {
    return ListView(
        children: [
          Column(
          children: [
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
          ],
        ),
        Text('Selam'),
        ElevatedButton(onPressed: (){}, child: Text('Button'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),)
        ],
        
      );
  }

  SingleChildScrollView singleChildScrollKullan() {
    return SingleChildScrollView(
        child: Column(
          children: [
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
            TekListeElemani(),
          ],
        ),
      );
  }

  Column TekListeElemani() {
    return Column(
        children: [
          Card(
            color: Colors.blue,
            shadowColor: Colors.cyan,
            elevation: 25,
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.read_more_outlined)),
              title: Text('Kayip İlani'),
              subtitle: Text('Kayip Hayvan'),
              trailing: Icon(Icons.pets),
            ) ,
          ),
          Divider(
            color:Colors.green,
            indent: 20,//soldan boşluk
            height: 10,//yukarıdan boşluk
            thickness: 1, //kalınlık
            endIndent: 20, //sağdan boşluk
          )
        ],
      );
  }
}