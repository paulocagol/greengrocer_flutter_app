import 'package:flutter/material.dart';

import 'category_tile.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'Legumes',
    'Frutas',
    'Doces',
  ];

  String categorySelected = 'Legumes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 15),
            child: Badge(
              backgroundColor: Colors.red,
              label: Text('2'),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: .0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 30),
            children: [
              TextSpan(text: 'Green', style: TextStyle(color: Colors.green)),
              TextSpan(text: 'grocer', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                  size: 21,
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    category: categories[index],
                    isSelected: categories[index] == categorySelected,
                    onPressed: () {
                      setState(() {
                        categorySelected = categories[index];
                      });
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
                itemCount: categories.length),
          )
        ],
      ),
    );
  }
}
