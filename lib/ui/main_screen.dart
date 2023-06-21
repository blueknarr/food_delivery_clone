import 'package:flutter/material.dart';
import 'package:food_delivery_clone/data/user_repository.dart';
import '../data/model/restaurant.dart';
import '../data/model/user.dart';
import '../data/restaurant_repository.dart';

import 'components/bottom_navigation_widget.dart';
import 'components/nav_widget.dart';
import 'components/searchbar_widget.dart';
import 'components/restaurants_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final User user = UserRepository().getUsers();
  List<Restaurant> restaurants = RestaurantRepository().getRestaurant();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 배경색 투명 설정
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF5258AA),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30)),
          ),
        ),
        // 다른 속성들을 추가할 수 있습니다.
        toolbarHeight: 180,
        title: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 8, 0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user.imgUrl),
                  ),
                ),
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.menu_open_rounded,
                  color: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bring order to',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        user.address,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'When',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${user.orderTime.hour}시',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const SearchBarWidget(),
          const SizedBox(height: 20),
          const NavWidget(),
          const SizedBox(height: 20),
          Expanded(
              child: ListView(
            children: restaurants.map((e) {
              return RestaurantWidget(restaurant: e);
            }).toList(),
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onItemTapped: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
