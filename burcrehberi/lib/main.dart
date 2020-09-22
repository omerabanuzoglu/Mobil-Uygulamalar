import 'package:burcrehberi/burc_detay.dart';
import 'package:burcrehberi/burc_liste.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burç Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/": (context) => burc_listesi(),
        "/burcListesi": (context) => burc_listesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");
        if (pathElemanlari[1] == "burc_detaylari") {
          return MaterialPageRoute(
              builder: (context) =>
                  burc_detaylari(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}
