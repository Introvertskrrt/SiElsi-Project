import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/controllers/sinamu_controller.dart';
import 'package:sibesi_app/views/sinamu_views/widgets/kirim_button_widget.dart';

class FormWidget extends StatelessWidget {
  FormWidget({super.key});

  final SinamuController controller = Get.put(SinamuController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                  "Isi Formulir",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Nama Lengkap",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Instansi",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Nomor Identitas KTP",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    keyboardType:
                        TextInputType.number, // Set keyboard type to number
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Only allow digits
                    ],
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Jumlah Pengikut (Orang)",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    keyboardType:
                        TextInputType.number, // Set keyboard type to number
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Only allow digits
                    ],
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Jenis Kelamin",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    items: controller.genderItems
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
                        return 'Please select gender.';
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
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Usia",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    keyboardType:
                        TextInputType.number, // Set keyboard type to number
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Only allow digits
                    ],
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Nomor HP",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    keyboardType:
                        TextInputType.number, // Set keyboard type to number
                    inputFormatters: [
                      FilteringTextInputFormatter
                          .digitsOnly, // Only allow digits
                    ],
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Tanggal dan Waktu Kunjungan",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: GetBuilder<SinamuController>(
                    builder: (controller) {
                      return TextFormField(
                        controller: TextEditingController(
                            text: controller.selectedDateTime),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 16),
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
                              controller.selectDate(context);
                            },
                          ),
                        ),
                        style: TextStyleConstant.nunitoRegular
                            .copyWith(fontSize: 12),
                        maxLines: 1,
                        readOnly: true,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Barang Bawaan",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Keterangan",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Alamat",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Keperluan",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 5),
                child: Text(
                  "Lain-lain",
                  style: TextStyleConstant.nunitoBold.copyWith(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: SizedBox(
                  height: 30,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                    style:
                        TextStyleConstant.nunitoRegular.copyWith(fontSize: 12),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Center(child: KirimButtonWidget()),
              const SizedBox(height: 30),
            ],
          ),
        )
      ],
    );
  }
}
