import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String typeOfNameOfCoffe;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeType({
    super.key,
    required this.typeOfNameOfCoffe,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          right: 25,
        ),
        decoration: const BoxDecoration(),
        child: Text(
          typeOfNameOfCoffe,
          style: TextStyle(
            fontSize: 18,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
