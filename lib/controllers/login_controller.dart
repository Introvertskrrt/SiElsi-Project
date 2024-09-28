import 'package:get/get.dart';
import 'package:sibesi_app/global_widgets/error_dialog_global_widget.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class LoginController extends GetxController {
  RxString email = "".obs;
  RxString password = "".obs;

  // make local auth method (only for prototype)
  Future<void> authPegawai() async {
    if (email.value == "pegawai@gmail.com" && password.value == "1234") {
      Get.offAllNamed(AppRoutes.dashboardPegawaiPage);
    } else {
      Get.dialog(const ErrorDialogGlobalWidget(
          errorMessage: "email atau password salah!"));
    }
  }

  Future<void> authKeluarga() async {
    if (email.value == "keluarga@gmail.com" && password.value == "1234") {
      Get.offAllNamed(AppRoutes.dashboardKeluargaPage);
    } else {
      Get.dialog(const ErrorDialogGlobalWidget(
          errorMessage: "email atau password salah!"));
    }
  }
}
