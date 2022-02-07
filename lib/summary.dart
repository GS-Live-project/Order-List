import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'colors.dart' as colors;
import 'package:http/http.dart';
import 'dart:convert';
import 'orderView.dart';
import 'SearchScreen/utils.dart';

//flutter run --no-sound-null-safety
class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Summary> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.BGCOLOR,
        appBar: AppBar(
            leading: const BackButton(color: Colors.white),
            elevation: 2,
            title: const Text('Order View'),
            backgroundColor: colors.BLUE),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
                child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(26.0))),
                      suffixIcon: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.search,
                            color: Colors.blue[900],
                          ),
                          label: Text('')),
                      hintText: 'Search Medicines',
                    ),
                  ),
                  ExpansionCard(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order For: Business / Person Name',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Other details:GSTN, DI,Address',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 10),
                          )
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          color: Colors.grey[300],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Order For- Meditail Stores',
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              SizedBox(height: 10),
                              Text('DL - xxxxx/xxxxx/xxxx',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 10)),
                              Text('GSTN - xxxxxxxxxxxx',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 10)),
                              Text('DT - xx/xx/xxxx',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 10)),
                              SizedBox(height: 5)
                            ],
                          ),
                        ),
                      ]),
                  SizedBox(height: 10),
                  ExpansionCard(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order to: Supplier Name',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Whatsapp Number',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 10),
                        )
                      ],
                    ),
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              color: Colors.grey[300],
                              child: Text('Place your widgets here!!',
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 10)),
                            ),
                          ])
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.delete, color: colors.BLUE),
                            SizedBox(width: 8),
                            Icon(Icons.save, color: colors.BLUE),
                            SizedBox(width: 8),
                            Icon(Icons.bookmark, color: colors.BLUE),
                            SizedBox(width: 8),
                            Icon(Icons.whatshot, color: colors.BLUE),
                            SizedBox(width: 8),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text('Row 1')],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text('Row 2')],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [Text('Row 3')],
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Comment ..',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  )),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ActionChip(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderView()),
                          );
                        },
                        label: Text(
                          'Order View',
                          style: TextStyle(color: Colors.amber),
                        ),
                        backgroundColor: Colors.white,
                        avatar: Icon(
                          Icons.list,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(width: 30),
                      ActionChip(
                        onPressed: () => showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          )),
                          context: context,
                          builder: (context) => buildSheet(),
                        ),
                        label: Text(
                          'Add Item',
                          style: TextStyle(color: Colors.grey[200]),
                        ),
                        backgroundColor: colors.BLUE,
                      )
                    ],
                  )
                ],
              ),
            )),
          ),
        ));
  }
}

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: ExpansionCard(
          background: Image.asset('assets/Army.jpg'),
          title: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('Hello, this is a card',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          children: [
            Container(
              color: Colors.grey[700],
              child: Column(
                children: [
                  Text('Order for - Meditail Stores',
                      style: TextStyle(color: Colors.black)),
                  SizedBox(height: 20),
                  Text('DL')
                ],
              ),
            )
          ]),
    ));
  }
}
