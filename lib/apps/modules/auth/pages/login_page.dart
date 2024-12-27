import 'package:attandance_app/apps/modules/home/main_page.dart';
import 'package:attandance_app/utils/constants/color.dart';
import 'package:attandance_app/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Sign in your account',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                validator: (value) => AValidtor.validateEmail(value),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  label: Text(
                    'Email',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              TextFormField(
                validator: (value) => AValidtor.validatorPassword(value),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(
                      width: 1,
                      color: AColors.primary,
                    ),
                  ),
                  label: Text(
                    'Password ..',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  suffixIcon: Icon(MingCuteIcons.mgc_eye_close_line),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lupa Password ?',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AColors.primary,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => MainHomePage());
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
            ],
          ),
        ),
      ),
    );
  }
}
