import 'package:get/get.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class PengaduanController extends GetxController {
  var fullName = ''.obs;
  var selectedGender = ''.obs;
  var age = 0.obs;
  var phoneNumber = ''.obs;

  final List<String> genderItems = ['Laki-Laki', 'Perempuan'];

  var isFormValid = false.obs;

  void submitForm() {
    if (fullName.isNotEmpty &&
        selectedGender.isNotEmpty &&
        age.value > 0 &&
        phoneNumber.isNotEmpty) {
      isFormValid.value = true;

      print("Nama Lengkap: ${fullName.value}");
      print("Jenis Kelamin: ${selectedGender.value}");
      print("Usia: ${age.value}");
      print("Nomor HP: ${phoneNumber.value}");
      Get.offAllNamed(AppRoutes.pengaduanTerlaporPage);

      clearForm();
      Get.snackbar("Sukses", "Data pengaduan berhasil dikirim",
          snackPosition: SnackPosition.BOTTOM);
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
