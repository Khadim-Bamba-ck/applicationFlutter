import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: Text('Counter Value => ${counter}',
        style: TextStyle(fontSize: 22,color: Colors.blue.shade400),)
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(//creation d'un bouton

            child: Icon(Icons.add),
            heroTag: "btn1",
            onPressed: (){
              setState(() {
                ++counter;
              });
            },
          ),
          SizedBox(width: 12),//mettre un espace entre les deux buttons
          FloatingActionButton(//creation d'un bouton

            child: Icon(Icons.remove),
            heroTag: "btn2",
            onPressed: (){
              setState(() {
                --counter;
              });
            },
          ),
        ],
      )

    );
  }
}
