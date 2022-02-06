import 'package:gs_live/registrationScreens/businessDetails.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class BusinessType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(14.h),
          child: AppBar(
            elevation: 13,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
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
                                        text: const TextSpan(
                                          text: 'Welcome \n',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: 'Login to ListApp',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                      const Image(
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
        body: Row(
          children: [
            Flexible(
                child: Container(
              color: Color(0xffF3F6FF),
            )),
            Flexible(
              flex: 9,
              child: Container(
                height: 100.0.h,
                // width: 2000.0.w,
                color: Color(0xffF3F6FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Container(height: 6.h)),
                    Flexible(
                      child: Container(
                        width: 100.w,
                        child: Text(
                          'You are a',
                          style: TextStyle(
                            color: Color(0xff484848),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 5.h,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 8.h,
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BusinessDetails()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 1.0, color: Colors.grey),
                                backgroundColor: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('../images/retailer.png'),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Retailer',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16)),
                                      Text('Chemist/Medical Store/Pharmacy',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                                Text('lime',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 3.h,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 8.h,
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BusinessDetails()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(width: 1.0, color: Colors.grey),
                                backgroundColor: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset('../images/supplier.png'),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Supplier',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16)),
                                      Text('Stockiest/Wholesale/Semi-Wholesale',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                                Text('l',
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ],
                            )),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 3.h,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: 8.h,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BusinessDetails()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1.0, color: Colors.grey),
                              backgroundColor: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('../images/company.png'),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Company',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 16)),
                                    Text('Pharma/Healthcare/FMCG/Allied Health',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12)),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: 0.01,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
                child: Container(
              color: Color(0xffF3F6FF),
            )),
          ],
        ));
  }
}
