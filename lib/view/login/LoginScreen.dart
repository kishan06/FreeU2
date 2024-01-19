import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _iemail = TextEditingController();
    TextEditingController _ipassword = TextEditingController();
    TextEditingController _amemail = TextEditingController();
    TextEditingController _ampassword = TextEditingController();
    Color primaryColor = Color(0xFFFFF3E4);
    Color secondaryColor = Color(0xFFc18948);
    RxBool isObscured = true.obs;
    RxBool amisObscured = true.obs;
    return GestureDetector(
      onTap: () {
        // Dismiss the keyboard
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: primaryColor,
            appBar: AppBar(
              backgroundColor: primaryColor,
              toolbarHeight: 150.h,
              leadingWidth: 200.w,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE3BF),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Login As',
                      style: TextStyle(fontSize: 30.h),
                    ),
                  ],
                ),
              ),
              bottom: MyTabBar(),
            ),
            body: TabBarView(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email address/Phone number",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter your email address';
                            }
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(value)) {
                              return 'Enter a Valid Email address';
                            }
                            return null;
                          },
                          controller: _iemail,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            hintText: 'Enter your email address',
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
                                color: Color(
                                    0xFFFFE3BF), // Border color when focused
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Obx(() {
                          return TextFormField(
                            obscureText: isObscured.value,
                            controller: _ipassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  isObscured.value = !isObscured.value;
                                },
                                icon: isObscured.value
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              ),
                              hintText: 'Enter your password',
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
                                  color: Color(
                                      0xFFFFE3BF), // Border color when focused
                                ),
                              ),
                            ),
                          );
                        }),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed('/forgotpScreen');
                              },
                              child: Text(
                                'Forgot password?',
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffc18948)),
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: Text(
                            'Or',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Container(
                            width: 150.w,
                            height: 50.h,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed('/loginWithOTPScreen');
                              },
                              child: Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primaryColor),
                                child: Center(
                                  child: Text(
                                    'Login using OTP',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('New here? '),
                            Text(
                              'Create account',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email address/Phone number",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextFormField(
                          controller: _amemail,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            hintText: 'Enter your email address',
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
                                color: Color(
                                    0xFFFFE3BF), // Border color when focused
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Obx(() {
                          return TextFormField(
                            obscureText: amisObscured.value,
                            controller: _ampassword,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock_outline),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  amisObscured.value = !amisObscured.value;
                                },
                                icon: amisObscured.value
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              ),
                              hintText: 'Enter your password',
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
                                  color: Color(
                                      0xFFFFE3BF), // Border color when focused
                                ),
                              ),
                            ),
                          );
                        }),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed('/forgotpScreen');
                              },
                              child: Text(
                                'Forgot password?',
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: secondaryColor),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Center(
                          child: Text(
                            'Or',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Container(
                            width: 150.w,
                            height: 50.h,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed('/loginWithOTPScreen');
                              },
                              child: Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primaryColor),
                                child: Center(
                                  child: Text(
                                    'Login using OTP',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('New here? '),
                            Text(
                              'Create account',
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class MyTabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize =>
      Size.fromHeight(56.0.h + 16.0.h); // Set the desired height

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0), // Set the desired padding
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Color(0xFF1b243d),
          labelColor: Color(0xFF1b243d),
          overlayColor: MaterialStateProperty.all(Color(0xFFFFF3E4)),
          tabs: [
            Tab(
              text: 'Investor',
            ),
            Tab(
              text: 'Asset Manager',
            ),
          ]),
    );
  }
}
