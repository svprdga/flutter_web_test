import 'package:flutter/material.dart';
import 'package:web_test/presentation/widget/screen/edit_screen.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

enum PopupOption { EDIT, DELETE }

class _ListScreenState extends State<ListScreen> {

  // ****************************** LIFECYCLE ****************************** //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 1000,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Content $index'),
                    subtitle: Text('Some description for content $index'),
                    trailing: PopupMenuButton<PopupOption>(
                      itemBuilder: (BuildContext context) {
                        return {
                          PopupOption.EDIT,
                          PopupOption.DELETE
                        }.map((PopupOption option) {
                          var text = '';
                          var icon;
                          switch (option) {
                            case PopupOption.EDIT:
                              text = 'Edit';
                              icon = Icons.edit;
                              break;
                            case PopupOption.DELETE:
                              text = 'Delete';
                              icon = Icons.delete;
                              break;
                          }

                          return PopupMenuItem<PopupOption>(
                              value: option,
                              child: Row(
                                children: [
                                  Icon(icon),
                                  Padding(
                                      padding: EdgeInsets.only(left: 8),
                                      child: Text(text)),
                                ],
                              ));
                        }).toList();
                      },
                      onSelected: (PopupOption option) {
                        switch (option) {
                          case PopupOption.EDIT:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditScreen()));
                            break;
                          case PopupOption.DELETE:
                            // Nothing
                            break;
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}