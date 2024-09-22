import 'package:get/get.dart';

class SigagakController extends GetxController {
  var selectedIndex = 0.obs; // index for filter
  var imageIndex = 0.obs; // index for image carousel in detail kegiatan

  var imagePaths = [
    'assets/images/pembinaan1.jpg',
    'assets/images/pembinaan2.png'
  ].obs;

  void changePage(int index) {
  imageIndex.value = index;
}


  void selectFilter(int index) {
    selectedIndex.value = index;
  }

  @override
  void onClose() {
    selectedIndex.value = 0;
    imageIndex.value = 0;
    super.onClose();
  }
}