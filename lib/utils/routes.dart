import 'package:afyaaidemo/pages/image_processing_page.dart';
import 'package:get/get.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => const ImgProcessPage()),
  ];
}
