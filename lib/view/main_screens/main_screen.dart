import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu2/view/main_screens/chat/chatScreen.dart';
import 'package:freeu2/view/main_screens/investment/investmentScreen.dart';
import 'package:get/get.dart';

import 'categories/categoryScreen.dart';
import 'home/homeScreen.dart';
import 'market/marketScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFFFFF3E4);
    Color secondaryColor = Color(0xffe8c69f);
    final MainController _mainController = Get.put(MainController());

    return SafeArea(
      child: Obx(() {
        return Scaffold(
          body: _mainController.currentTab[_mainController.selectedIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            currentIndex: _mainController.selectedIndex.value,
            onTap: (index) {
              _mainController.updateTab(index);
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                activeIcon: SvgPicture.asset('assets/icons/home_icon.svg'),
                icon: SvgPicture.asset('assets/icons/home_outlined_icon.svg'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                activeIcon: SvgPicture.asset('assets/icons/category_icon.svg'),
                icon:
                    SvgPicture.asset('assets/icons/category_outlined_icon.svg'),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                activeIcon:
                    SvgPicture.asset('assets/icons/investment_icon.svg'),
                icon: SvgPicture.asset('assets/icons/invest_outlined_icon.svg'),
                label: 'Investment',
              ),
              BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                activeIcon: SvgPicture.asset('assets/icons/chat_icon.svg'),
                icon: SvgPicture.asset('assets/icons/chat_outlined_icon.svg'),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                activeIcon:
                    SvgPicture.asset('assets/icons/market_outlined_icon.svg'),
                icon: SvgPicture.asset('assets/icons/market_outlined_icon.svg'),
                label: 'Market',
              ),
            ],
          ),
        );
      }),
    );
  }
}

class MainController extends GetxController {
  var selectedIndex = 0.obs;
  var currentTab = [
    const HomeScreen(),
    const CategoryScreen(),
    const InvestmentScreen(),
    const ChatScreen(),
    const MarketScreen(),
  ].obs;

  void updateTab(int index) {
    selectedIndex.value = index;
  }
}
