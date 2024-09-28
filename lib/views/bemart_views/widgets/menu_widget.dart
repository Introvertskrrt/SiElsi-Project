import 'package:flutter/material.dart';
import 'package:sibesi_app/constants/color_constant.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/views/bemart_views/widgets/category_item_widget.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Wallet and amount section (like in the image)
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Base container
              Container(
                width: double.infinity,
                height: 175,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 54),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CategoryItemWidget(
                              iconPath: 'assets/icons/makanan.png',
                              label: 'Makanan',
                            ),
                            SizedBox(width: 16),
                            CategoryItemWidget(
                              iconPath: 'assets/icons/minuman.png',
                              label: 'Minuman',
                            ),
                            SizedBox(width: 16),
                            CategoryItemWidget(
                              iconPath: 'assets/icons/obat.png',
                              label: 'Obat-obatan',
                            ),
                            SizedBox(width: 16),
                            CategoryItemWidget(
                              iconPath: 'assets/icons/pakaian.png',
                              label: 'Pakaian',
                            ),
                            SizedBox(width: 16),
                            CategoryItemWidget(
                              iconPath: 'assets/icons/barang.png',
                              label: 'Barang',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Floating wallet container (adjust position to stack it above the base container)
              Positioned(
                top: -20, // Adjust to move it up
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                    ),
                    child: Row(
                      children: [
                        // Wallet icon
                        Icon(Icons.account_balance_wallet_rounded,
                            color: ColorConstant.primaryColor),

                        const SizedBox(width: 8),

                        // Display balance
                        Text(
                          'Rp 1.500.000',
                          style: TextStyleConstant.nunitoBold.copyWith(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),

                        // Spacer
                        const Spacer(),

                        // Add button icon
                        const Icon(Icons.add_box, color: Colors.red),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
