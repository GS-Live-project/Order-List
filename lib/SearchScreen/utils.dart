import 'package:flutter/material.dart';
import 'package:gs_live/colors.dart' as colors;

Widget buildButton({
  required String text,
  required VoidCallback onClicked,
  Color? color,
}) =>
    Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        height: 30,
        width: 100,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colors.BLUE),
          ),
          onPressed: onClicked,
          child: Text(
            text,
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ),
    );

Widget buildSheet() => DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.6,
      maxChildSize: 0.9,
      builder: (_, controller) => Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  child: Text(
                    'ADD ITEMS',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: colors.BLUE,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 150,
                        child: Column(
                          children: [
                            Text('Pay Quantity',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 50),
                    Container(
                        height: 100,
                        width: 150,
                        child: Column(
                          children: [
                            Text(
                              'Free Quantity',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        )),
                  ],
                )),
                Text(
                  'Unit',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Text(
                  'Supplier New',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(colors.BLUE),
                    ),
                    child: Text('Add Item'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
