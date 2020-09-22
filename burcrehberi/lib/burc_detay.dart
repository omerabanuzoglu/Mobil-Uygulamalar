import 'package:burcrehberi/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:burcrehberi/burc_liste.dart';

class burc_detaylari extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;
  burc_detaylari(this.gelenIndex);

  @override
  Widget build(BuildContext context) {
    secilenBurc = burc_listesi.tumBurclar[gelenIndex];
    return Scaffold(
      primary: false,
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: (Text(secilenBurc.burcAdi + "Burcu ve Özellikleri")),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                secilenBurc.burcDetayi,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
