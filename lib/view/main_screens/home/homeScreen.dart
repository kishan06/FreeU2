import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFFFFF3E4);
    Color secondaryColor = Color(0xffe8c69f);
    List<panelItem> items = <panelItem>[
      panelItem(
          prefixIcon: SvgPicture.asset('assets/icons/for_investor.svg'),
          headerText: "For Investor",
          expandedText: "Lorem ipsum"),
      panelItem(
          prefixIcon: SvgPicture.asset('assets/icons/for_asset_manager.svg'),
          headerText: "For Asset manager",
          expandedText: "Lorem ipsum"),
      panelItem(
          prefixIcon: SvgPicture.asset('assets/icons/for_intermediary.svg'),
          headerText: "For Intermediaries",
          expandedText: "Lorem ipsum"),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: TextStyle(fontSize: 25.h),
          ),
          backgroundColor: primaryColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Image.asset('assets/icons/burger_menu.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Image.asset('assets/icons/notification.png'),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 176,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/home_img.png',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/quotes.png'),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              'We do not just provide you options. \nWe want you to learn about the ones\n best suited for your needs.',
                              style: TextStyle(
                                fontSize: 18.h,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: ListView(
                  children: items.map((panelItem item) {
                    return Container(
                      margin: const EdgeInsets.only(
                          bottom: 8.0), // Add bottom margin
                      child: Card(
                        color: secondaryColor, // Customize background color
                        child: ExpansionTile(
                          title: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                item.prefixIcon,
                                SizedBox(
                                  width: 15.h,
                                ),
                                Text(item.headerText),
                              ],
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item.expandedText),
                            ),
                          ],
                          initiallyExpanded: item.isExpanded?.value ?? false,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class panelItem {
  Widget prefixIcon;
  String headerText;
  String expandedText;
  RxBool? isExpanded = false.obs;
  panelItem({
    required this.prefixIcon,
    required this.headerText,
    required this.expandedText,
    this.isExpanded,
  });
}
