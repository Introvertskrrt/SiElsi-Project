import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sibesi_app/constants/text_style_constant.dart';
import 'package:sibesi_app/utils/app_routes.dart';

class DaftarPetugasWidget extends StatelessWidget {
  const DaftarPetugasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: 32),
          _buildPetugasList(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Daftar Petugas',
      style: TextStyleConstant.nunitoBold.copyWith(
        fontSize: 14,
        color: Colors.black,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildPetugasList() {
    final List<Petugas> petugasList = [
      Petugas(
          name: 'Setianto',
          id: '199601252020121003',
          position: 'Penjaga Tahanan',
          imagePath: 'assets/images/petugas.png'),
      Petugas(
          name: 'Setianto',
          id: '199601252020121003',
          position: 'Penjaga Tahanan',
          imagePath: 'assets/images/petugas.png'),
      Petugas(
          name: 'Setianto',
          id: '199601252020121003',
          position: 'Penjaga Tahanan',
          imagePath: 'assets/images/petugas.png'),
      Petugas(
          name: 'Setianto',
          id: '199601252020121003',
          position: 'Penjaga Tahanan',
          imagePath: 'assets/images/petugas.png'),
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: petugasList.length,
      itemBuilder: (context, index) {
        return _buildPetugasCard(petugasList[index]);
      },
    );
  }

  Widget _buildPetugasCard(Petugas petugas) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.black.withOpacity(0.2),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildImage(petugas.imagePath),
          const SizedBox(width: 20),
          _buildPetugasDetails(petugas),
          const SizedBox(width: 10),
          _buildArrowIcon(),
        ],
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Container(
      width: 80,
      height: 100,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildPetugasDetails(Petugas petugas) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            petugas.name,
            style: TextStyleConstant.nunitoBold.copyWith(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            petugas.id,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            petugas.position,
            style: TextStyleConstant.nunitoRegular.copyWith(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          _buildRatingStars(),
        ],
      ),
    );
  }

  Widget _buildRatingStars() {
    return Row(
      children: List.generate(
        5,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 5.0),
          child: Icon(
            Icons.star,
            color: Colors.amber,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildArrowIcon() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.biodataPetugasPage);
      },
      child: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: 15,
      ),
    );
  }
}

class Petugas {
  final String name;
  final String id;
  final String position;
  final String imagePath;

  Petugas({
    required this.name,
    required this.id,
    required this.position,
    required this.imagePath,
  });
}
