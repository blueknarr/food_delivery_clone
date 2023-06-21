import 'package:flutter/material.dart';

import '../../data/model/menu.dart';

class MenuWidget extends StatefulWidget {
  final Menu menu;

  const MenuWidget({Key? key, required this.menu}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  int _quantity = 0;
  double _total = 0;

  void _increment() {
    setState(() {
      _quantity++;
      _total += widget.menu.price;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
        _total -= widget.menu.price;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
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
                _buildCnt(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImg(BuildContext context) {
    return Image.network(
      widget.menu.imgUrl,
      height: 80,
      width: 80,
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Text(
                '\$${widget.menu.price}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Text(widget.menu.name),
            ],
          ),
        ),
        Row(
          children: [
            Text('${widget.menu.gram}g'),
            const SizedBox(width: 10),
            Text('${widget.menu.calorie}kcal'),
          ],
        )
      ],
    );
  }

  Widget _buildCnt() {
    return Column(
      children: [
        IconButton(
          icon: const Icon(
            Icons.add,
          ),
          iconSize: 16,
          onPressed: _increment,
        ),
        Text(
          '$_quantity',
        ),
        IconButton(
          icon: const Icon(
            Icons.remove,
          ),
          iconSize: 16,
          onPressed: _decrement,
        ),
      ],
    );
  }
}
