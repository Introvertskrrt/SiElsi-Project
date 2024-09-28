import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart'; // Pastikan Anda mengimpor ini

class SinamuController extends GetxController {
  final List<String> genderItems = [
    'Pria',
    'Wanita',
  ];

  String? selectedValue;
  String? selectedDateTime;
  final formKey = GlobalKey<FormState>();

  Future<void> selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      selectedDateTime = DateFormat('yyyy-MM-dd').format(picked);
      update(); 
      // ignore: use_build_context_synchronously
      selectTime(context);
    }
  }

  Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      final DateTime now = DateTime.now();
      final DateTime selectedTime = DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      selectedDateTime = DateFormat('yyyy-MM-dd – kk:mm').format(selectedTime);
      update();
    }
  }
}
