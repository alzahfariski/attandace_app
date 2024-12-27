import 'package:attandance_app/apps/modules/auth/pages/login_page.dart';
import 'package:attandance_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/LogoText.png',
                height: 100,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Aplikasi absensi karyawan kampung inggris Rafflesia Bengkulu',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => LoginPage());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AColors.primary,
              padding: const EdgeInsets.all(18),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Login',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
