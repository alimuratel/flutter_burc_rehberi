import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_list.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';

class BurcDetay extends StatelessWidget {

  int gelenIndex;
  Burc secilenBurc;

  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {

    secilenBurc=BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      primary: true,
      body:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.orange,
            flexibleSpace:FlexibleSpaceBar(
              background: Image.asset("images/"+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),

            ),

          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child:Text(secilenBurc.burcDetay,style: TextStyle(fontSize: 18,color: Colors.white,
                ),
                ),
                ),
              ),
            ),

      ],

      ),
    );
  }
}
