import 'package:coffeshop_app/pages/home/widgets/coffe_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/coffe_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List coffeTypes = [
    [
      'Cappucino',
      true,
    ],
    [
      'Milk',
      false,
    ]
  ];

  void coffeTypeSelected(int index) {
    setState(() {
      for (var i = 0; i < coffeTypes.length; i++) {
        coffeTypes[i][1] = false;
      }
      coffeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Text(
              "Find the best coffe for you",
              style: GoogleFonts.nunito(
                fontSize: 56,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
                hintText: "Find your coffe...",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeTypes.length,
                itemBuilder: (context, index) {
                  return CoffeType(
                    onTap: () {
                      coffeTypeSelected(index);
                    },
                    isSelected: coffeTypes[index][1],
                    typeOfNameOfCoffe: coffeTypes[index][0],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  CoffeTile(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          )
        ],
      ),
    );
  }
}
