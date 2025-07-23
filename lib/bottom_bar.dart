
import 'package:flutter/material.dart';

class Bottom_bar extends StatelessWidget{

@override
Widget build(BuildContext context)
{
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
        label: 'home'),

        BottomNavigationBarItem(icon: Icon(Icons.people),
        label:'Network'),
        
      ],

    ),
  );
}


}