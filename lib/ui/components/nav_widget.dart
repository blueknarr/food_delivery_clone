import 'package:flutter/material.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(color: Colors.transparent),
              )),
            ),
            onPressed: () {},
            child: const Column(
              children: [
                Icon(Icons.local_pizza),
                Text('Pizza'),
              ],
            )),
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(color: Colors.transparent),
              )),
            ),
            onPressed: () {},
            child: const Column(
              children: [
                Icon(Icons.local_pizza),
                Text('Chiken'),
              ],
            )),
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(color: Colors.transparent),
              )),
            ),
            onPressed: () {},
            child: const Column(
              children: [
                Icon(Icons.local_pizza),
                Text('Burger'),
              ],
            )),
        ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: const BorderSide(color: Colors.transparent),
              )),
            ),
            onPressed: () {},
            child: const Column(
              children: [
                Icon(Icons.local_pizza),
                Text('Dessert'),
              ],
            )),
      ],
    );
  }
}
