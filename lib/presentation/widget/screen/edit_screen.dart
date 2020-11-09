import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  EditScreen({Key key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: Card(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Form(
                child: IntrinsicHeight(
                child: Column(
                  children: [
                    Row(
                      children: [
                        // CONTENT NAME
                        Container(
                          child: Expanded(
                            child: TextFormField(
                              decoration:
                                  InputDecoration(labelText: 'Content name'),
                              validator: (value) {
                                return null;
                              },
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                        // PRICE
                        Container(
                          padding: EdgeInsets.only(left: 16),
                          width: 150,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Price', suffixText: 'EUR'),
                            validator: (value) {
                              return null;
                            },
                            keyboardType: TextInputType.number,
                          ),
                        )
                      ],
                    ),
                    // DESCRIPTION
                    Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: TextFormField(
                        decoration: InputDecoration(labelText: 'Description'),
                        validator: (value) {
                          return null;
                        },
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                      ),
                    ),
                    // IMAGE
                    Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Image.network(
                          'https://www.sciencenewsforstudents.org/wp-content/uploads/2020/04/1030_LL_trees-1028x579.png'),
                    ),
                    // BUTTON
                    Container(
                      padding: EdgeInsets.only(
                          top: 32, bottom: 32, left: 16, right: 16),
                      child: ElevatedButton(
                        child: Text('Submit'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
