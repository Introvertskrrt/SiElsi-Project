import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const SearchBarWidget({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      width: double.infinity,
      color: Colors.white,
      child: _buildSearchField(),
    );
  }

  Widget _buildSearchField() {
    return Container(
      height: 40,
      decoration: _searchFieldDecoration(),
      child: TextFormField(
        onChanged: onChanged,
        style: TextStyleConstant.nunitoRegular.copyWith(
          fontSize: 16,
          color: ColorConstant.paragraphTextColor,
        ),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: 'Cari Petugas...',
          hintStyle: TextStyleConstant.nunitoRegular.copyWith(
            fontSize: 14,
            color: ColorConstant.paragraphTextColor.withOpacity(0.6),
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          suffixIcon: Icon(
            Icons.search,
            color: ColorConstant.paragraphTextColor.withOpacity(0.6),
          ),
        ),
      ),
    );
  }

  BoxDecoration _searchFieldDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        width: 1,
        color: Colors.black.withOpacity(0.2),
      ),
    );
  }
}
