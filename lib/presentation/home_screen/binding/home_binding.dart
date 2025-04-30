import 'package:get/get.dart';
import 'package:turf_booking/presentation/home_screen/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
