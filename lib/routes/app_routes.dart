import 'package:get/route_manager.dart';
import 'package:turf_booking/presentation/home_screen/binding/home_binding.dart';
import 'package:turf_booking/presentation/home_screen/home_screen.dart';
import 'package:turf_booking/presentation/login_screen/binding/login_binding.dart';
import 'package:turf_booking/presentation/login_screen/login_screen.dart';
import 'package:turf_booking/presentation/onboarding/binding/onboarding_binding.dart';
import 'package:turf_booking/presentation/onboarding/onbording_screen.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String loginScreen = '/loginScreen';
  static const String homeScreen = '/homeScreen';

  static List<GetPage> pages = [
    GetPage(
        name: initialRoute,
        page: () => OnbordingScreen(),
        binding: OnboardingBinding()),
    GetPage(
        name: loginScreen, page: () => LoginScreen(), binding: LoginBinding()),
    GetPage(name: homeScreen, page: () => HomeScreen(), binding: HomeBinding()),
  ];
}
