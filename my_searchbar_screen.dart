import 'package:flutter/material.dart';
import 'package:list_with_searchbar/player_search.dart';



class MySearchBarScreen extends StatefulWidget {
  @override
  _MySearchBarScreenState createState() => _MySearchBarScreenState();
}

class _MySearchBarScreenState extends State<MySearchBarScreen> {
  final months = [
    'January',
    'Februaury',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                  context: context, delegate: PlayerSearch(months));
            },
            icon: Icon(Icons.search),
          ),

        ],
        centerTitle: true,
        title: Text('Search Bar Sample'),
      ),
      body: ListView.builder(
          itemCount: months .length,
          itemBuilder: (context, position) {
            return ListTile(
            title: Text(months[position]),

    );
    },
    ),
    );
  }
}