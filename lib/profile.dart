import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(14.h),
          child: AppBar(
            elevation: 13,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../images/bg.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                children: [
                  Spacer(),
                  Flexible(
                    flex: 9,
                    child: Container(
                      width: 1000.0.w,
                      child: Row(
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                Flexible(
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                    )),
                                Flexible(
                                  flex: 5,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                          child: RichText(
                                        text: TextSpan(
                                          text: 'Business Name',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                          ),
                                        ),
                                      )),
                                      Image(
                                          image:
                                              AssetImage('../images/logo.png')),
                                    ],
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 6.h,
                  color: Color(0xffFFC107),
                  child: TextButton(
                    child: Text(
                      'Business',
                      style: (TextStyle(color: Colors.white)),
                    ),
                    onPressed: () {},
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 6.h,
                  color: Color(0xffC7CDDD),
                  child: TextButton(
                    child: Text(
                      'Personal',
                      style: (TextStyle(color: Color(0xff7D7D7D))),
                    ),
                    onPressed: () {},
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 6.h,
                  color: Color(0xffC7CDDD),
                  child: TextButton(
                    child: Text(
                      'Staff',
                      style: (TextStyle(color: Color(0xff7D7D7D))),
                    ),
                    onPressed: () {},
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 6.h,
                  color: Color(0xffC7CDDD),
                  child: TextButton(
                    child: Text(
                      'Contact',
                      style: (TextStyle(color: Color(0xff7D7D7D))),
                    ),
                    onPressed: () {},
                  ),
                )),
              ],
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(child: Container(color: Color(0xffF3F6FF))),
                Expanded(
                  flex: 9,
                  child: Container(
                      color: Color(0xffF3F6FF),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 2.h,
                          ),
                          Text(
                            'Business Type',
                            style: TextStyle(
                                color: Color(0xff484848),
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2.h,
                          ),
                          Container(
                            height: 6.h,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 1.0, color: Colors.grey),
                                  backgroundColor: Colors.white),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('../images/retailer.png'),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Retailer',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 12)),
                                        Text('Chemist/Medical Store/Pharmacy',
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontSize: 9)),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'lime',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 2.5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.grey,
                                height: 0.1.h,
                                width: 70.w,
                              ),
                            ],
                          ),
                          Container(
                            height: 3.0.h,
                          ),
                          Text(
                            'Business Name',
                            style: TextStyle(
                                color: Color(0xff484848),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Container(
                            height: 1.h,
                          ),
                          Container(
                            height: 5.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Business Name',
                                  hintStyle: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(15, 4, 10, 10)),
                            ),
                          ),
                          Container(
                            height: 2.0.h,
                          ),
                          Text(
                            'User Type',
                            style: TextStyle(
                                color: Color(0xff484848),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Container(
                            height: 1.h,
                          ),
                          Container(
                            height: 5.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Manual',
                                  hintStyle: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(15, 4, 10, 10)),
                            ),
                          ),
                          Container(
                            height: 2.0.h,
                          ),
                          Text(
                            'GST Number',
                            style: TextStyle(
                                color: Color(0xff484848),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Container(
                            height: 1.h,
                          ),
                          Container(
                            height: 5.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Number',
                                  hintStyle: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(15, 4, 10, 10)),
                            ),
                          ),
                          Container(
                            height: 2.0.h,
                          ),
                          Text(
                            'Drug License Number',
                            style: TextStyle(
                                color: Color(0xff484848),
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Container(
                            height: 1.h,
                          ),
                          Container(
                            height: 5.h,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Manual',
                                  hintStyle: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(15, 4, 10, 10)),
                            ),
                          ),
                          Container(
                            height: 2.0.h,
                          ),
                          Container(
                              height: 5.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: DottedBorder(
                                      dashPattern: [2, 2],
                                      child: TextButton(
                                          onPressed: () {
                                            showModalBottomSheet<void>(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(30.0),
                                                    topRight:
                                                        const Radius.circular(
                                                            30.0)),
                                              ),
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                    height: 80.h,

                                                    //color: Colors.red,
                                                    child: Center(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            height: 7.h,
                                                            width: 80.w,
                                                            color: Colors
                                                                .grey[200],
                                                            child:
                                                                OutlinedButton(
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Image.asset(
                                                                            '../images/camera.png'),
                                                                        Text(
                                                                          '    Take a Photo',
                                                                          style:
                                                                              TextStyle(color: Color(0xff213455)),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 3.h,
                                                          ),
                                                          Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  height: 0.1.h,
                                                                  width: 20.w,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                                Text('OR'),
                                                                Container(
                                                                  height: 0.1.h,
                                                                  width: 20.w,
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 3.h,
                                                          ),
                                                          Container(
                                                            height: 7.h,
                                                            width: 80.w,
                                                            color: Colors
                                                                .grey[200],
                                                            child:
                                                                OutlinedButton(
                                                              onPressed: () {},
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Image.asset(
                                                                            '../images/gallery.png'),
                                                                        Text(
                                                                          '    Use Gallery',
                                                                          style:
                                                                              TextStyle(color: Color(0xff213455)),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 4.h,
                                                          ),
                                                          Container(
                                                              width: 80.w,
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: <
                                                                      TextSpan>[
                                                                    TextSpan(
                                                                      text:
                                                                          'Drug License Number  \n',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xff213455),
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            18,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'lime \n',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            5,
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'Accepted file formats are .jpeg, .png and .pdf. \n',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xff213455),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'Maximum file size should be less than 5MB. \n',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .grey[900],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )),
                                                          Container(
                                                            height: 2.h,
                                                          ),
                                                          Container(
                                                            width: 30.w,
                                                            child:
                                                                ElevatedButton(
                                                                    onPressed:
                                                                        () {},
                                                                    style: ElevatedButton
                                                                        .styleFrom(
                                                                      primary:
                                                                          Color(
                                                                              0xFF143957),
                                                                      elevation:
                                                                          10,
                                                                    ),
                                                                    child: Text(
                                                                        'Sumit',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                17))),
                                                          )
                                                        ],
                                                      ),
                                                    ));
                                              },
                                            );
                                          },
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text('Upload Image',
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.grey),
                                                textAlign: TextAlign.center),
                                          )),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            height: 3.h,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 4.h,
                                  width: 130,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF143957),
                                      elevation: 10,
                                    ),
                                    child: const Text(
                                      'Submit',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(child: Container(color: Color(0xffF3F6FF)))
              ],
            )),
          ],
        ),
      );
    });
  }
}
