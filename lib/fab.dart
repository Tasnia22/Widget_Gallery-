
import 'package:flutter/material.dart';

void main()
{
  runApp(FAB());
}



class FAB extends StatelessWidget{

@override

Widget build(BuildContext context)
{
  return MaterialApp(
    title: 'Floating Action Button',
    theme: ThemeData(
      primarySwatch:Colors.blue,

    ),
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  );

}
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int i=0;

  @override

  Widget build(BuildContext context)
{
  return Scaffold(
    appBar: AppBar(
      title: Text('Floating Action Button'),
      backgroundColor: const Color.fromARGB(255, 194, 227, 227),
      foregroundColor: Colors.grey,
    ),


    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pressed many times"),
          Text(
            '$i',
            textScaleFactor: 3,
          )
        ],
      ),
    ),

floatingActionButtonLocation: 
FloatingActionButtonLocation.centerDocked,
floatingActionButton: FloatingActionButton(
  child:Icon(Icons.add,
  size: 32,
  weight: 1000),
  backgroundColor:const Color.fromARGB(255, 22, 233, 64),
  foregroundColor:const Color.fromARGB(26, 1, 6, 9),
  onPressed:(){
    setState((){
      i++;
    });
  },
),
 );
}
}