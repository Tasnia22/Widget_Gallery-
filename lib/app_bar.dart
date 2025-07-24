import 'package:flutter/material.dart';


class Appdemo extends StatefulWidget {
  const Appdemo({Key? key}) : super(key: key);

  @override
  State<Appdemo> createState() => _AppdemoState();
}

class _AppdemoState extends State<Appdemo> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: "Search...",
                  border: InputBorder.none,
                ),
              )
            : const Text('App Bar Title'),
        actions: [
          IconButton(
            tooltip: "Favorite",
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            tooltip: "Search",
            onPressed: () {
              setState(() {
                _isSearching = !_isSearching;
                if (!_isSearching) {
                  _searchController.clear();
                }
              });
            },
            icon: Icon(_isSearching ? Icons.close : Icons.search),
          ),
          IconButton(
            tooltip: "Share",
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  child: Text('first'),
                ),
                const PopupMenuItem(
                  child: Text('Second'),
                ),
                const PopupMenuItem(
                  child: Text('Third'),
                ),
              ];
            },
          ),
        ],
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text('App Bar Demo page& Bottom Bar too'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Network',
          ),

          BottomNavigationBarItem(icon:Icon(Icons.person),
          label:'profile'),

          
        ],
      ),
    );
  }
}