import 'package:flutter/material.dart';

import '../../data/model/restaurant.dart';
import 'menu_widget.dart';

class HeroScreen extends StatelessWidget {
  final Restaurant restaurant;
  const HeroScreen({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Hero(
          tag: restaurant.id,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(restaurant.imgUrl),
                fit: BoxFit.cover,
              ),
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(30)),
            ),
          ),
        ),
        // 다른 속성들을 추가할 수 있습니다.
        toolbarHeight: 180,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    restaurant.name,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    restaurant.address,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  '${restaurant.rate}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              restaurant.about,
              maxLines: 2,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text('${restaurant.distance}km'),
                const SizedBox(width: 20),
                Text(restaurant.category)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  '${restaurant.menu.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView(
              children: restaurant.menu.map((e) {
                return MenuWidget(menu: e);
              }).toList(),
            )),
          ],
        ),
      ),
    );
  }
}
