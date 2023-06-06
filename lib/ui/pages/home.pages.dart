import 'package:flutter/material.dart';

import '../widgets/drawer.page.dart';
//Ma page principale
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ma liste de menu
      drawer: MyDrawer(),
      //mon titre de ma navBar
      appBar: AppBar(title: Text('CBG')),
      body: Center(
        child: Text("home Page",
        style: Theme.of(context).textTheme.headline3,),
        
        
        ));
  }
}
