import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  const CoffeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 170,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "lib/assets/images/caputino.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Latte",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "With Almond Milk",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$4",
                ),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.orange,
                  ),
                  child: const Icon(
                    Icons.add,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
