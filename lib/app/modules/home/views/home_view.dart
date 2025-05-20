import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:home/app/shared/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  margin: const EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(200)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.location_on, color: AppColors.green),
                      SizedBox(width: 4),
                      Text(
                        'Bandung, West Java',
                        style: TextStyle(
                          letterSpacing: 0.16,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textBlack,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(top: 60),
                  decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(200)),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(200),
                      onTap: () {},
                      child: const Icon(Icons.notifications_none_outlined)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(color: AppColors.gray),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Senin, 17 Ramadan 1446",
                            style: TextStyle(
                              letterSpacing: 0.16,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textBlack,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "19:48",
                            style: TextStyle(
                              letterSpacing: 0.16,
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/angin.png',
                          height: 40,
                          width: 40,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Baru saja waktu Isya ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textGray,
                            letterSpacing: 0.16,
                          ),
                        ),
                        TextSpan(
                          text: "± 38 menit yang lalu",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textBlack,
                            letterSpacing: 0.16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      waktuSholat("Subuh", "04:37",
                          Image.asset('assets/images/subuh.png')),
                      waktuSholat("Dzuhur", "11:58",
                          Image.asset('assets/images/dzuhur.png')),
                      waktuSholat("Ashar", "15:08",
                          Image.asset('assets/images/ashar.png')),
                      waktuSholat("Maghrib", "18:02",
                          Image.asset('assets/images/magrib.png')),
                      waktuSholat("Isya", "19:11",
                          Image.asset('assets/images/isya.png'),
                          isActive: true),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/images/menu_internal.png')),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Menu Internal',
                      style: TextStyle(
                        letterSpacing: 0.16,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.gray,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Image.asset(
                            'assets/images/approval_pendaftaran.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Approval\nPendaftaran',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.gray,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Image.asset(
                            'assets/images/regulasi.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Regulasi',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.gray,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Image.asset(
                            'assets/images/permohonan_surat.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Permohonan\nSurat',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.gray,
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Image.asset(
                            'assets/images/lihat_semuanya.png',
                            height: 24,
                            width: 24,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Text(
                          textAlign: TextAlign.center,
                          'Lihat\nSemua',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    'assets/images/menu_informasi.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Menu Informasi',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                menuInformasi(
                  AppColors.alquranMenu.withOpacity(0.2),
                  "Al-Qur'an",
                  Image.asset(
                    'assets/images/menu_al_quran.png',
                    height: 125.6,
                  ),
                  const EdgeInsets.only(left: 16, right: 8),
                ),
                menuInformasi(
                  AppColors.doaMenu,
                  "Doa-Doa",
                  Image.asset(
                    'assets/images/menu_doa.png',
                    height: 125.6,
                  ),
                  const EdgeInsets.only(right: 8),
                ),
                menuInformasi(
                  AppColors.arahKiblatMenu,
                  "Arah Kiblat",
                  Image.asset(
                    'assets/images/menu_al_quran.png',
                    height: 125.6,
                  ),
                  const EdgeInsets.only(right: 8),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  Widget menuInformasi(
    Color color,
    String title,
    Image image,
    EdgeInsets margin,
  ) {
    return Column(
      children: [
        Container(
          margin: margin,
          height: 157,
          width: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          child: image,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  Widget waktuSholat(
    String title,
    String time,
    Image image, {
    bool isActive = false,
  }) {
    return Container(
      width: 55,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? AppColors.green : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? Colors.white : AppColors.textBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 24,
            width: 24,
            child: image,
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isActive ? Colors.white : AppColors.textBlack,
            ),
          ),
        ],
      ),
    );
  }
}
