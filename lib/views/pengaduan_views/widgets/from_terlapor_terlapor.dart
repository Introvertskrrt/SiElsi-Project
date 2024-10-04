import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/pengaduan_terlapor_controller.dart';
import 'package:sibesi_app/controllers/sinamu_controller.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class FormTerlaporWidget extends StatelessWidget {
  FormTerlaporWidget({super.key});

  final PengaduanTerlaporController controller =
      Get.put(PengaduanTerlaporController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(),
                _buildFormField("Nama Lengkap"),
                _buildFormField("Instansi"),
                _buildFormField(
                  "Nomor Identitas KTP",
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                _buildFormField(
                  "Jumlah Pengikut (Orang)",
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                _buildDropdownField("Jenis Kelamin", controller.genderItems),
                _buildFormField(
                  "Usia",
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                _buildFormField(
                  "Nomor HP",
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                _buildDateField("Tanggal dan Waktu Kunjungan"),
                _buildFormField("Barang Bawaan"),
                _buildFormField("Keterangan"),
                _buildFormField("Alamat"),
                _buildFormField("Keperluan"),
                _buildFormField("Lain-lain"),
                const SizedBox(height: 30),
                Center(child: _kirimButtonWidget()),
                const SizedBox(height: 30),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _kirimButtonWidget() {
    return SizedBox(
      width: 80,
      height: 30,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(
            ColorConstant.primaryColor,
          ),
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.dashboardKeluargaPage);
        },
        child: Text(
          "Kirim",
          style: TextStyleConstant.nunitoBold.copyWith(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Center(
      child: Text(
        "Isi Formulir",
        style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
      ),
    );
  }

  Widget _buildFormField(
    String label, {
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              label,
              style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 30,
            child: TextFormField(
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
              style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              label,
              style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 30,
            child: DropdownButtonFormField2<String>(
              isExpanded: true,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: TextStyleConstant.nunitoRegular
                              .copyWith(fontSize: 12),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select $label.';
                }
                return null;
              },
              onChanged: (value) {
                // Do something when selected item is changed.
              },
              onSaved: (value) {
                controller.selectedValue = value.toString();
              },
              buttonStyleData: const ButtonStyleData(
                padding: EdgeInsets.only(right: 8),
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black45,
                ),
                iconSize: 24,
              ),
              dropdownStyleData: DropdownStyleData(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                padding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateField(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              label,
              style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 30,
            child: GetBuilder<SinamuController>(
              builder: (controller) {
                return TextFormField(
                  controller:
                      TextEditingController(text: controller.selectedDateTime),
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.calendar_today,
                        size: 18,
                      ),
                      onPressed: () {
                        controller.selectDate(Get.context!);
                      },
                    ),
                  ),
                  style: TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                  maxLines: 1,
                  readOnly: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
