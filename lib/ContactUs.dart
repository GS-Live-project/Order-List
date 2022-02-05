import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Contact Us',
          style: TextStyle(
            fontFamily: 'work',
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(20, 57, 87, 1),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo1.png'),
                  radius: 32.5,
                ),
              ),
            ),
            Container(
                child: SizedBox(
              height: 6,
            )),
            Container(
                child: Align(
              alignment: Alignment.center,
              child: const Text(
                'ListApp',
                style: TextStyle(
                  color: Color.fromRGBO(20, 57, 87, 1),
                  fontFamily: 'work',
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            )),
            SizedBox(
              height: 39,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(48.0)),
                  color: Color.fromRGBO(243, 246, 255, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(0, 2), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(27, 39, 27, 0),
                  child: Column(
                    children: [
                      const Text(
                        'For Supplier Registration, Company\n Registration and other queries, please mail\n us your product folder on ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          fontFamily: 'monster',
                          color: Color.fromRGBO(20, 57, 87, 1),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(23, 63, 95, 0.3),
                                width: 1)),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(32, 25, 0, 25),
                              child: Icon(Icons.mail),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              'support@lilstapp.in',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'monster',
                                color: Color.fromRGBO(20, 57, 87, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(23, 63, 95, 0.3),
                                width: 1)),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(32, 25, 0, 25),
                              child: Icon(Icons.phone),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              '+91 9977773388',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'monster',
                                  color: Color.fromRGBO(20, 57, 87, 1),
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromRGBO(20, 57, 87, 1),
                                  decorationThickness: 1.2),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Card(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(23, 63, 95, 0.3),
                                width: 1)),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.fromLTRB(32, 25, 0, 25),
                              child: FaIcon(FontAwesomeIcons.whatsapp),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              '+91 9977773388',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'monster',
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(20, 57, 87, 1),
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      Color.fromRGBO(20, 57, 87, 1),
                                  decorationThickness: 1.2),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
