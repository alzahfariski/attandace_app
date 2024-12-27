import 'package:attandance_app/utils/constants/color.dart';
import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

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
                  left: 12,
                ),
                child: Row(
                  children: [
                    Text(
                      'Leaderboard',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 240,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://i.pinimg.com/originals/1b/14/53/1b14536a5f7e70664550df4ccaa5b231.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AColors.primary,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Image.asset(
                                      'assets/badges/peringkatkedua.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Cahyo Prasetyo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                color: AColors.primary,
                                child: Center(
                                  child: Text(
                                    '100',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 280,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://i.pinimg.com/originals/1b/14/53/1b14536a5f7e70664550df4ccaa5b231.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AColors.primary,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Image.asset(
                                      'assets/badges/peringkatpertama.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Cahyo Prasetyo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                color: AColors.primary,
                                child: Center(
                                  child: Text(
                                    '100',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          'https://i.pinimg.com/originals/1b/14/53/1b14536a5f7e70664550df4ccaa5b231.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 1,
                                        color: AColors.primary,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Image.asset(
                                      'assets/badges/peringkatketiga.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Cahyo Prasetyo',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                color: AColors.primary,
                                child: Center(
                                  child: Text(
                                    '100',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              height: 1,
              color: AColors.primary,
            ),
            ListView.builder(
              padding: const EdgeInsets.only(
                bottom: 120,
                top: 20,
              ),
              itemCount: 7,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                int num = 4 + index;
                return Card(
                  shadowColor: Colors.transparent,
                  shape: Border.all(
                    color: AColors.primary,
                    width: 0.6,
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  color: Colors.white,
                  child: Container(
                    height: 68,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                num.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      'https://i.pinimg.com/originals/1b/14/53/1b14536a5f7e70664550df4ccaa5b231.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: AColors.primary,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Text(
                                  'Cahyo $num',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: Colors.black,
                                      ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '100',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: AColors.primary,
                                  ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Card(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        color: AColors.primary,
        child: Container(
          height: 68,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      '1',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/originals/1b/14/53/1b14536a5f7e70664550df4ccaa5b231.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Text(
                        'Cahyo Prasetyo',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '100',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
