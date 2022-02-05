import 'package:flutter/material.dart';

class OrderViewDetailed extends StatefulWidget {
  const OrderViewDetailed({Key? key}) : super(key: key);

  @override
  _OrderViewDetailedState createState() => _OrderViewDetailedState();
}

class _OrderViewDetailedState extends State<OrderViewDetailed> {
  @override
  Widget Innercard() {
    return Container(
      child: Card(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 0.0, 10.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0.0,
                child: Row(
                  children: const <Widget>[
                    Text("Pay Qty:   "),
                    Text(
                      "5000   ",
                      style: TextStyle(
                          color: Color(0xff173f5f),
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Free/Sch:   "),
                    Text(
                      "5000   ",
                      style: TextStyle(
                          color: Color(0xff173f5f),
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Unit:   "),
                    Text(
                      "5000",
                      style: TextStyle(
                          color: Color(0xff173f5f),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Card(
                elevation: 0.0,
                child: Row(
                  children: const <Widget>[
                    Text("Supplier/Wholesaler:   "),
                    Text(
                      "Gupta Store",
                      style: TextStyle(
                          color: Color(0xff173f5f),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> cardListouter = [];
  List<Widget> cardListinner = [];
  Widget Outercard() {
    return Stack(
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
            child: Column(
              children: [Innercard(), Innercard()],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: const Card(
                  color: Color(0xff173f5f),
                  elevation: 0.0,
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      "Gupta Store",
                      style: TextStyle(color: Color(0xffffffff)),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Card(
                    elevation: 0.0,
                    child: FlatButton(
                      minWidth: 10.0,
                      color: const Color(0xff173f5f),
                      onPressed: () {},
                      child: const Icon(
                        Icons.feed_sharp,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0.0,
                    child: FlatButton(
                      minWidth: 10.0,
                      color: const Color(0xff173f5f),
                      onPressed: () {},
                      child: const Icon(
                        Icons.call,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget Viewouter() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Row(
          children: [
            FloatingActionButton(onPressed: () {
              setState(() {
                cardListinner.add(Innercard());
              });
            }),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  cardListouter.add(Outercard());
                });
              },
            ),
          ],
        ),
        Outercard(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: cardListinner.length,
          itemBuilder: (context, index) {
            return cardListinner[index];
          },
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: cardListouter.length,
          itemBuilder: (context, index) {
            return cardListouter[index];
          },
        )
      ],
    );
  }

  Widget Viewinner() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          itemCount: cardListinner.length,
          itemBuilder: (context, index) {
            return cardListinner[index];
          },
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: const Color(0xff173f5f),
        leading: const BackButton(color: Colors.white),
        title: const Text("Order View"),
      ),
      body: Viewouter(),
    );
  }
}
