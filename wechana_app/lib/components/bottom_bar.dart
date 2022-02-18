import 'package:flutter/material.dart';
import 'package:wechana_app/models/bottom_bar_item.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.items,
    required this.onItemSelected,
    this.selectedIndex = 0,
    this.elevation = 3.0,
    this.height = 70.0,
  }) : super(key: key);

  final List<BottomBarItem> items;
  final ValueChanged<int> onItemSelected;

  final int selectedIndex;
  final double elevation;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: elevation,
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((item) {
              var index = items.indexOf(item);
              return GestureDetector(
                onTap: () => {
                  print('Navigate to Nav Index $index'),
                  onItemSelected(index),
                },
                child: _BottomBarItem(
                  item: item,
                  isSelected: index == selectedIndex,
                  width: MediaQuery.of(context).size.width / items.length,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.width,
  }) : super(key: key);

  final BottomBarItem item;
  final bool isSelected;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconTheme(
            data: IconThemeData(
              color: isSelected ? item.activeColor : item.inactiveColor,
            ),
            child: item.icon,
          ),
          Text(
            item.label,
            style: TextStyle(
              color: isSelected ? item.activeColor : item.inactiveColor,
            ),
          ),
        ],
      ),
    );
  }
}
