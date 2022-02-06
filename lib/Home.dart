// ignore_for_file: prefer_const_literals_to_create_immutables, library_prefixes

import 'package:flutter/material.dart';
import 'package:gs_live/registrationScreens/verifyNumber.dart';
import 'SearchScreen/SearchScreen.dart';
import 'ContactUs.dart';
import 'orderView.dart';
import 'orderViewDetailed.dart';
import 'calculator.dart';
import 'registrationScreens/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue = 'supplier';
  List<String> dropdownOptions = ['supplier', 'company', 'medicine & product'];

  String selectedSupplier = "";

  // the part where we build the state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff143957),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Contact us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contact()),
                );
              },
            ),
            ListTile(
              title: const Text('Order view'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderView()),
                );
              },
            ),
            ListTile(
              title: const Text('Order view (detailed)'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OrderViewDetailed()),
                );
              },
            ),
            ListTile(
              title: const Text('Margin Calculator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calculator()),
                );
              },
            ),
            ListTile(
              title: const Text('Login page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
            ListTile(
              title: const Text('Change number'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyNumber()),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff143957)),
        shadowColor: Colors.transparent,
        toolbarHeight: 100,
        backgroundColor: const Color(0xFFF3F6FF),
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: const Color(0xFFF3F6FF),
            child: Image.asset('images/image (2).png'),
          ),
          const CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.notifications,
              color: Color(0xff143957),
              size: 25.0,
            ),
          ),
        ]),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(
                25,
                10,
                0,
                0,
              ),
              child: const Text(
                'Hello !',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: const Color(0xff143957),
                  fontSize: 35.0,
                  fontFamily: 'PublicSans',
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
              child: Row(
                children: [
                  const Text(
                    'Select & Start ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PublicSans',
                      fontSize: 30.0,
                    ),
                  ),
                  Text(
                    'Searching ',
                    style: TextStyle(
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PublicSans',
                      fontSize: 30.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
                child: Row(
                  children: [
                    Container(
                        //   child: const MyStatefulWidget(),
                        child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 33,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 5,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: dropdownOptions
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                          child: TextField(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SearchScreen(type: dropdownValue)),
                          );
                        },
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.blueAccent,
                        ),
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.search),
                          hintText: "Search $dropdownValue",
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 32.0),
                              borderRadius: BorderRadius.circular(25.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 32.0),
                              borderRadius: BorderRadius.circular(8.0)),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      )),
                    ),
                    // Icon(
                    //   Icons.location_on,
                    //   color: Colors.yellow[600],
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 600,
              height: 40,
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.home),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Expanded(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.navigation),
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.location_city),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
