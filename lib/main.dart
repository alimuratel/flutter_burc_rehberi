import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/burc_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burç Rehberi",
      debugShowCheckedModeBanner: false,
      initialRoute: "/burcListesi",
      routes: {
        "/": (context) => BurcListesi(),
        "/burcListesi": (context) => BurcListesi(),
      },
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split("/");

      if(pathElemanlari[1]=="burcDetay"){
        return MaterialPageRoute(builder: (context)=>BurcDetay(int.parse(pathElemanlari[2])));
    }
    return null;
      },
      theme:
          ThemeData(primarySwatch: Colors.orange, brightness: Brightness.dark),
    );
  }
}
