import 'package:attandance_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                  top: 20,
                  left: 12,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FluttermojiCircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 100,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: AColors.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                MingCuteIcons.mgc_user_edit_line,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: AColors.primary,
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cahyo Prasetyo',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'CahyoPrasetyo@gmail.com',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(MingCuteIcons.mgc_right_line),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 48,
                    color: AColors.info,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '100',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Poin',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Colors.grey,
                                ),
                          ),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 48,
                        color: AColors.primary,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Level',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Colors.grey,
                                  ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Early Bird',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(MingCuteIcons.mgc_right_line),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 48,
                    color: AColors.info,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Text(
                          'Badge Awards',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(MingCuteIcons.mgc_right_line),
                      ),
                    ],
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/badges/PerfectWeek.png',
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            Text(
                              'Perfect Week',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const Divider(
              color: AColors.primary,
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AColors.primary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Informasi Aplikasi',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Icon(
                            MingCuteIcons.mgc_right_line,
                            color: AColors.primary,
                          ),
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
