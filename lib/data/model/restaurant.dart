import 'menu.dart';

class Restaurant {
  int id;
  String name;
  String address;
  String category;
  String about;
  double distance;
  double rate;
  String imgUrl;
  List<Menu> menu;

  Restaurant({
    required this.id,
    required this.name,
    required this.address,
    required this.category,
    required this.about,
    required this.distance,
    required this.rate,
    required this.imgUrl,
    required this.menu,
  });
}
