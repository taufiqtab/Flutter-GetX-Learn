import 'package:get/get.dart';
import 'package:getx_learning/coba/userModel.dart';

class Controller extends GetxController {
	
  var counter = 0.obs;

  void increment() => counter.value++;

  void showSnackbar(){
    Get.snackbar("waw", "mantap");
  }

}