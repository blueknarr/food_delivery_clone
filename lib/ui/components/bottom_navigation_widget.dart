import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  final ValueChanged<int> onItemTapped;
  final int currentIndex;

  const BottomNavigationWidget({
    super.key,
    required this.onItemTapped,
    required this.currentIndex,
  });

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          activeIcon: Icon(Icons.map),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            activeIcon: Icon(Icons.shopping_bag),
            label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          activeIcon: Icon(Icons.account_box),
          label: '',
        ),
      ],
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black26,
      currentIndex: widget.currentIndex,
      onTap: widget.onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}
