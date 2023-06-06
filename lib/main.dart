import 'package:app1/ui/pages/counter.page.dart';
import 'package:app1/ui/pages/gallery.page.dart';
import 'package:app1/ui/pages/home.pages.dart';
import 'package:app1/ui/pages/meteo.pages.dart';
import 'package:flutter/material.dart';

main()=>runApp(MyApp());

//mon application principale
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //definir mes routes
      routes: {
        "/":(context) => HomePage(),
        "/counter":(context)=>CounterPage(),
        "/meteo":(context) => MeteoPage(),
        "/Gallery":(context) =>GalleryPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      //demarrage la page d'accueil de mon application
      initialRoute: "/",
      );
    

  }
}



