// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: OrderView(),
  ));
}

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  List<Widget> cardListinner = [];
  // ignore: non_constant_identifier_names
  Widget Cards() {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      overflow: Overflow.visible,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
              border: Border.all(color: const Color(0xffe4eafc)),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_rounded),
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    child: Row(
                      children: const <Widget>[
                        Text(
                          "Pay Qty:   ",
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "5000   ",
                          style: TextStyle(
                            color: Color(0xff173f5f),
                            fontFamily: 'WorkSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Free/Sch:   ",
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "5000   ",
                          style: TextStyle(
                            color: Color(0xff173f5f),
                            fontFamily: 'WorkSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Unit:   ",
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "5000",
                          style: TextStyle(
                            color: Color(0xff173f5f),
                            fontFamily: 'WorkSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: const [
                            Text(
                              "Supplier/Wholesaler:   ",
                              style: TextStyle(
                                fontFamily: 'WorkSans',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Gupta Store",
                              style: TextStyle(
                                color: Color(0xff173f5f),
                                fontFamily: 'WorkSans',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Checkbox(
                          value: true,
                          onChanged: (fal) => {},
                          activeColor: const Color(0xff143957),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            color: const Color(0xff173f5f),
            elevation: 0.0,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Gum Tone Gel",
                style: TextStyle(color: Color(0xffffffff)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: const Color(0xff143957),
        leading: const BackButton(color: Colors.white),
        title: const Text("Order View"),
      ),
      body: ListView(
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                cardListinner.add(Cards());
              });
            },
          ),
          Cards(),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: cardListinner.length,
              itemBuilder: (context, index) {
                return cardListinner[index];
              },
            ),
          )
        ],
      ),
    );
  }
}

// ############################################################################################################################################################################################################################################################
