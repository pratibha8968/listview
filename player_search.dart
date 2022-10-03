import 'package:flutter/material.dart';

class PlayerSearch extends SearchDelegate {

  List<String> months ;
  String selectedResult = "";

  PlayerSearch(this.months);

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            query = "";
          })
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestedSoccerPlayers = [];
    query.isEmpty ? suggestedSoccerPlayers = months
        : suggestedSoccerPlayers.addAll(months.where(
          (element) => element.toLowerCase().contains(query.toLowerCase()),
    ));

    return ListView.builder(
        itemCount: suggestedSoccerPlayers.length,
        itemBuilder: (context, position) => ListTile(
          title: Text(suggestedSoccerPlayers[position]),
        ));
  }

}
