
import 'package:flutter/material.dart';
import 'package:widget_gallery/fab.dart';
import 'app_bar.dart';
void main()=> runApp(Appbar());

class Appbar extends StatelessWidget {
Appbar({Key? key}): super(key:key);

@override
Widget build(BuildContext context)
{
  return MaterialApp(
    title: "Title Here",
    
    theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
    useMaterial3: true),

    home:
      FAB(),


  );
}
}