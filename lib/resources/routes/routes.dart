import 'package:freeu2/view/main_screens/main_screen.dart';
import 'package:get/get.dart';

import '../../view/login/ForgotPScreen.dart';
import '../../view/login/ForgotPassOTP.dart';
import '../../view/login/LoginScreen.dart';
import '../../view/login/LoginWithOTP.dart';
import '../../view/login/OtpScreen.dart';
import '../../view/login/ResetPassword.dart';
import 'route_name.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.loginScreen,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: RouteName.loginWithOTPScreen,
          page: () => const LoginWithOTPScreen(),
        ),
        GetPage(
          name: RouteName.otpScreen,
          page: () => const OTPScreen(),
        ),
        GetPage(
          name: RouteName.forgotPScreen,
          page: () => const ForgotPScreen(),
        ),
        GetPage(
          name: RouteName.forgotPassOTPScreen,
          page: () => const ForgotPassOTPScreen(),
        ),
        GetPage(
          name: RouteName.resetPassScreen,
          page: () => const ResetPassScreen(),
        ),
        GetPage(
          name: RouteName.mainScreen,
          page: () => const MainScreen(),
        ),
      ];
}
