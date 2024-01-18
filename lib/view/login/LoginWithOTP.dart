import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginWithOTPScreen extends StatelessWidget {
  const LoginWithOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFFFFF3E4);
    Color secondaryColor = Color(0xFFc18948);
    TextEditingController _phoneNumber = TextEditingController();

    return SafeArea(
      child: Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            backgroundColor: primaryColor,
            toolbarHeight: 150.h,
            leadingWidth: 400.w,
            leading: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40.h,
                    width: 40.h,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFE3BF),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Login With OTP',
                    style: TextStyle(fontSize: 30.h),
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your phone number",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  controller: _phoneNumber,
                  decoration: InputDecoration(
                    icon: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          border: Border.all(color: Color(0xFFFFE3BF))),
                      child: Center(
                          child: Text(
                        "+91",
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: Colors.grey, // Default label color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFFE3BF),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFFE3BF), // Border color when focused
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/OTPScreen');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: secondaryColor),
                    child: Center(
                      child: Text(
                        'Get OTP',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
