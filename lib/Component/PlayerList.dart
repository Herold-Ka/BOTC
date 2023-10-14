import 'package:flutter/material.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({super.key, required this.title});

  final String title;

  @override
  State<PlayerList> createState() => _PlayerListState();
}

/*class Players {
  int id;
  String name;
  String role;
  String alignement;

  Players({this.id, this.name, this.role, this.alignement});
}*/

class _PlayerListState extends State<PlayerList> {
  //List<Players> listPlayer = []

  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text(widget.title)),
        body: Row(
          children: [
            Center(
              child: TextField(
                obscureText: true,
                controller: myController,
                /*decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),*/
                /*controller: myController,*/
              ),
            )
            /*Container(
              child: Text(myController.text),
            )*/
          ],
        ));
  }
}
