import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class VerifyNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
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
                                          text: 'Welcome \n',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                          ),
                                          children: const <TextSpan>[
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
        body: Row(
          children: [
            Flexible(
                child: Container(
              color: Color(0xffF3F6FF),
            )),
            Flexible(
              flex: 9,
              child: Container(
                height: 1000.0.h,
                width: 1000.0.w,
                color: Color(0xffF3F6FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Container(height: 6.h)),
                    Flexible(
                      child: Container(
                        width: 1000.w,
                        child: Text(
                          'Change Number',
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
                        width: 1000.w,
                        height: 5.h,
                      ),
                    ),
                    Container(
                      width: 1000.w,
                      height: 4.h, //It will take a 30% of screen height
                      //color: Colors.grey,
                      child: Text(
                        'Your Number',
                        style: TextStyle(
                          color: Color(0xff484848),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: 1000.w,
                      height: 6.h,
                      //color: Colors.blueGrey,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Number'),
                      ),
                    ),
                    Container(
                      width: 1000.w,
                      height: 2.h,
                    ),
                    Container(
                      width: 1000.w,
                      height: 4.h,
                      //color: Colors.yellow,
                      child: Text(
                        'New Number',
                        style: TextStyle(
                          color: Color(0xff484848),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 6.h,
                      width: 1000.0.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Your Number'),
                      ),
                    ),
                    Container(
                      width: 1000.w,
                      height: 8.h,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF143957),
                                elevation: 10,
                              ),
                              child: const Text(
                                'Change',
                                style: TextStyle(fontSize: 16),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
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
        ),
      );
    });
  }
}
