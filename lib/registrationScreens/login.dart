import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import "businessType.dart";

class Login extends StatelessWidget {
  BuildContext? get context => null;

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
                                  // Spacer(
                                  //   flex: 2,
                                  // ),
                                  Flexible(
                                      flex: 3,
                                      child: Container(
                                        color: Colors.transparent,
                                      )),
                                  Flexible(
                                    flex: 5,
                                    //color: Colors.yellow,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      //color: Colors.yellow,
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
                                            image: AssetImage(
                                                '../images/logo.png')),
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
                          width: 1000.w, //It will take a 30% of screen height
                          //color: Colors.blue,
                          // padding: ,
                          child: Text(
                            'Mobile',
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
                          height: 1.h,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff9B9B9B)),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Flexible(
                            child: Container(
                              width: 40.w,
                              child: CountryPickerDropdown(
                                initialValue: 'IN',
                                itemBuilder: _buildDropdownItem,
                                priorityList: [
                                  CountryPickerUtils.getCountryByIsoCode('IN'),
                                ],
                                sortComparator: (Country a, Country b) =>
                                    a.isoCode.compareTo(b.isoCode),
                                onValuePicked: (Country country) {
                                  print("${country.name}");
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 20,
                            color: Colors.grey,
                          ),
                          Flexible(
                            child: Container(
                              width: 50.w,
                              child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        color: Color(0xffF3F6FF),
                        height: 3.h,
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
                                  'Submit',
                                  style: TextStyle(fontSize: 16),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BusinessType()));
                                },
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
          ));
    });
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
}
