import 'package:flutter/material.dart';
import 'package:food_delivery_clone/ui/components/hero_screen.dart';
import 'package:go_router/go_router.dart';

import '../../data/model/restaurant.dart';

class RestaurantWidget extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantWidget({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _buildImg(context),
                ),
                _buildTitle(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImg(BuildContext context) {
    return GestureDetector(
      // onTap: () async {
      //   await Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => HeroScreen(restaurant: restaurant),
      //     ),
      //   );
      // },
      onTap: () {
        context.push('/main/restaurant', extra: restaurant);
      },
      child: Hero(
        tag: restaurant.id,
        child: Image.network(
          restaurant.imgUrl,
          height: 80,
          width: 80,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              restaurant.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('${restaurant.rate}'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 16,
              ),
              Text(restaurant.address),
            ],
          ),
        ),
        Row(
          children: [
            Text('${restaurant.distance}km'),
            const SizedBox(width: 10),
            Text(restaurant.category)
          ],
        ),
      ],
    );
  }
}
