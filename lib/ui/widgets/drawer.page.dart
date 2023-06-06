import 'package:app1/config/global.params.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children:[
          //l'entete de notre page liste menu
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors:[
                Colors.white,
                Colors.blue
              ])
                        ),
            
            child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("images/Luffy.png"),
              radius: 70
              
              
              ,),
          )

          
          
          ),
          ...(GlobalParams.menus as List).map((item){
            return ListTile(
                    title: Text('${item['title']}',style: TextStyle(fontSize: 22),),
                    leading: item['icon'],
                    trailing: Icon(Icons.arrow_right, color: Colors.blue),
                    onTap: (){
                    //fermeture du drawer(MENU)
                    Navigator.of(context).pop();
                    //aller vers la page Accueil
                    Navigator.pushNamed(context, "${item['route']}");
    },

    );
          })

        ],
      
      ),
      );
  }
}
