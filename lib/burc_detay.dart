import 'burc_liste.dart';
import 'package:flutter/material.dart';
import 'models/burc.dart';

class BurcDetay extends StatelessWidget {
  int gelenindex;
  Burc secilenBurc;

  BurcDetay(this.gelenindex);

  @override
  Widget build(BuildContext context) {
    secilenBurc=BurcListesi.tumBurclar[gelenindex];
    return Scaffold(
      body: CustomScrollView(
        primary:false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),
              background: Image.asset("img/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover),
              centerTitle: true,

            ),
            
          ),

          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Text(secilenBurc.burcDetayi, style: TextStyle(fontSize: 18,),),
              )
            ),
          )
        ],
      ),
    );
  }
}