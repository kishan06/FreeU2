import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetPassScreen extends StatelessWidget {
  const ResetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFFFFF3E4);
    Color secondaryColor = Color(0xFFc18948);
    TextEditingController _newPass = TextEditingController();
    TextEditingController _confirmPass = TextEditingController();
    RxBool npisObscured = true.obs;
    RxBool cpisObscured = true.obs;

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
                    'Reset password',
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
                  "New password",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Obx(() {
                  return TextFormField(
                    obscureText: npisObscured.value,
                    controller: _newPass,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        onPressed: () {
                          npisObscured.value = !npisObscured.value;
                        },
                        icon: npisObscured.value
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      hintText: 'Enter your new password',
                      hintStyle: TextStyle(
                        color: Colors.grey, // Default label color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFE3BF),
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
                  );
                }),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(Icons.check),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Has atleast 8 characters',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(Icons.check),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Has an uppercase letter or symbol',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(Icons.check),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Has a number',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Confirm password",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Obx(() {
                  return TextFormField(
                    obscureText: cpisObscured.value,
                    controller: _confirmPass,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        onPressed: () {
                          cpisObscured.value = !cpisObscured.value;
                        },
                        icon: cpisObscured.value
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                      hintText: 'Re-enter your new password',
                      hintStyle: TextStyle(
                        color: Colors.grey, // Default label color
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFE3BF),
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
                  );
                }),
                SizedBox(
                  height: 40.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: secondaryColor),
                    child: Center(
                      child: Text(
                        'Proceed',
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
