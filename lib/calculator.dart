import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 245, 252, 1),
      appBar: AppBar(
        title: Text('Margin Calculator'),
        backgroundColor: Color.fromRGBO(20, 57, 87, 1),
        leading: BackButton(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(38, 20, 20, 0),
            child: Text('calculate profit margin per product and percentage'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(146, 0, 20, 20),
            child: Text('margin on mrp'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(126, 0, 20, 20),
            child: CircularPercentIndicator(
              radius: 150,
              lineWidth: 10,
              percent: 0.8,
              progressColor: Colors.purple,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.white,
              center: const Text('80%', style: TextStyle(fontSize: 30)),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 25, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Flexible(
                      child: new TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: 'Paid Qty',
                    ),
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  new Flexible(
                      child: new TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: 'Free Qty',
                    ),
                  )),
                ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 25, 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Flexible(
                      child: new TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: 'MRP',
                    ),
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  new Flexible(
                      child: new TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: 'Rate',
                    ),
                  )),
                ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 10, 25, 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Flexible(
                      child: new TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: 'GST %',
                    ),
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  new Flexible(
                      child: new TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: 'Cash Disc %',
                    ),
                  )),
                ]),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(20, 57, 87, 1),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10)),
              onPressed: () => print('pressed'),
              child: const Text('Calculate'),
            )
          ]),
          Container(
            margin: EdgeInsets.fromLTRB(25, 20, 0, 2),
            child: Text(
              'Total Margin',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(25, 8, 25, 0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Rs 1.00',
                    hintStyle: TextStyle(color: Color.fromRGBO(23, 63, 95, 1))),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(100, 8, 2, 0),
            child: Text(' with 100.00% margin on mrp'),
          ),
        ],
      ),
    );
  }
}
