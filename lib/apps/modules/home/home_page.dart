import 'package:attandance_app/apps/modules/home/pages/permission_page.dart';
import 'package:attandance_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:one_clock/one_clock.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bgheader.png'),
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            'https://i.pinimg.com/originals/1b/14/53/1b14536a5f7e70664550df4ccaa5b231.jpg',
                            width: 48.0,
                            height: 48.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello, Welcome!',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            Text(
                              'Cahyo Prasetyo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 18,
              ),
              child: Column(
                children: [
                  DigitalClock.light(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    isLive: true,
                    datetime: DateTime.now(),
                    textScaleFactor: 1.8,
                    digitalClockTextColor: AColors.primary,
                    showSeconds: false,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    child: DigitalClock(
                      format: 'yMMMEd',
                      datetime: DateTime.now(),
                      textScaleFactor: 1,
                      showSeconds: false,
                      isLive: true,
                      // decoration: const BoxDecoration(color: Colors.cyan, shape: BoxShape.rectangle, borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.all(64),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AColors.primary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12,
                            color: AColors.primary,
                          )
                        ]),
                    child: Column(
                      children: [
                        Icon(
                          MingCuteIcons.mgc_finger_press_line,
                          size: 62,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Check In',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AColors.danger.withAlpha(100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MingCuteIcons.mgc_information_line,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Diluar lingkungan kantor',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '-- : --',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Check In',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '-- : --',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Check Out',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => PermissionPage()),
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AColors.primary.withAlpha(100),
                          width: 0.8,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          MingCuteIcons.mgc_calendar_add_line,
                                          size: 24,
                                          color: AColors.primary,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Izin Bekerja',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      MingCuteIcons.mgc_right_line,
                                      color: AColors.primary,
                                    ),
                                  ],
                                ),
                                const Divider(
                                  color: AColors.primary,
                                  height: 32,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      MingCuteIcons.mgc_information_line,
                                      color: AColors.primary,
                                      size: 18,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Tidak sedang mengajukan izin',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
