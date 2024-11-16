import 'package:get/get.dart';

class SignUpController extends GetxController {
  var isChecked = false.obs;
  void Checked(bool value) {
    isChecked(value);
  }
}
