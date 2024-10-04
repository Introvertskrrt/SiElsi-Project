import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/pengaduan_controller.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final PengaduanController pengaduanController =
      Get.put(PengaduanController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Isi Data Diri Pelapor",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 12),

              /// Nama Lengkap
              _buildTextFieldLabel("Nama Lengkap"),
              _buildTextField(
                onSaved: (value) =>
                    pengaduanController.updateFullName(value ?? ''),
              ),
              const SizedBox(height: 10),

              /// Jenis Kelamin
              _buildTextFieldLabel("Jenis Kelamin"),
              _buildGenderDropdown(),
              const SizedBox(height: 10),

              /// Usia
              _buildTextFieldLabel("Usia"),
              _buildTextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onSaved: (value) => pengaduanController
                    .updateAge(int.tryParse(value ?? '0') ?? 0),
              ),
              const SizedBox(height: 10),

              /// Nomor HP
              _buildTextFieldLabel("Nomor HP"),
              _buildTextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onSaved: (value) =>
                    pengaduanController.updatePhoneNumber(value ?? ''),
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
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
                      pengaduanController.submitForm();
                    },
                    child: Text(
                      "Kirim",
                      style: TextStyleConstant.nunitoBold.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  /// Widget untuk membuat label field
  Widget _buildTextFieldLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 5),
      child: Text(
        label,
        style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
      ),
    );
  }

  /// Widget untuk membuat text field
  Widget _buildTextField({
    TextInputType keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    Function(String?)? onSaved,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
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
          onSaved: onSaved,
          onChanged:
              onSaved, // Perbarui state pada controller saat perubahan terjadi
        ),
      ),
    );
  }

  /// Widget untuk dropdown jenis kelamin
  Widget _buildGenderDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Obx(
        () => SizedBox(
          height: 30,
          child: DropdownButtonFormField2<String>(
            isExpanded: true,
            value: pengaduanController.selectedGender.value.isEmpty
                ? null
                : pengaduanController.selectedGender.value,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            items: pengaduanController.genderItems
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyleConstant.nunitoRegular
                            .copyWith(fontSize: 12),
                      ),
                    ))
                .toList(),
            onChanged: (value) {
              pengaduanController.updateGender(value ?? '');
            },
            onSaved: (value) {
              pengaduanController.updateGender(value ?? '');
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
      ),
    );
  }
}
