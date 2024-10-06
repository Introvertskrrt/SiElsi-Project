import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class PengaduanController extends GetxController {
  var fullName = ''.obs;
  var selectedGender = ''.obs;
  var age = 0.obs;
  var phoneNumber = ''.obs;
  var nikNumber = 0.obs;

  final List<String> genderItems = ['Laki-Laki', 'Perempuan'];

  var isFormValid = false.obs;

  void submitForm() {
    if (fullName.isNotEmpty &&
        selectedGender.isNotEmpty &&
        age.value > 0 &&
        phoneNumber.isNotEmpty &&
        nikNumber.value > 0) {
      isFormValid.value = true;

      if (kDebugMode) {
        print("Nama Lengkap: ${fullName.value}");
        print("Nomor HP: ${phoneNumber.value}");
        print("Usia: ${age.value}");
        print("Jenis Kelamin: ${selectedGender.value}");
        print("NIK: ${nikNumber.value}");
      }
      Get.toNamed(AppRoutes.pengaduanTerlaporPage);
      clearForm();
    } else {
      isFormValid.value = false;
      Get.snackbar("Error", "Tolong lengkapi semua data form",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void clearForm() {
    fullName.value = '';
    selectedGender.value = '';
    age.value = 0;
    phoneNumber.value = '';
  }

  void updateFullName(String name) {
    fullName.value = name;
  }

  void updateNik(int nik) {
    nikNumber.value = nik;
  }

  void updateGender(String gender) {
    selectedGender.value = gender;
  }

  void updateAge(int inputAge) {
    age.value = inputAge;
  }

  void updatePhoneNumber(String number) {
    phoneNumber.value = number;
  }
}
