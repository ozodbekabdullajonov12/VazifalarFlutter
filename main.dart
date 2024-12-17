import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C0F0D),
      extendBody: true,
      appBar: AppBar(
        leadingWidth: 50,
        backgroundColor: const Color(0xFF1C0F0D),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            'svg/vector.svg',
            width: 21,
            height: 14,
            fit: BoxFit.cover,
          ),
        ),
        // Title
        title: const Text(
          "Categories",
          style: TextStyle(
            color: Color(0xFFFD5D69),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              "svg/notification.svg",
              width: 12,
              height: 17,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              'svg/search.svg',
              width: 12,
              height: 17,
              fit: BoxFit.cover,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MainCategoryItem(image: "assets/seafood.png", text: "Seafood"),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/lunch.png", text: "Lunch"),
              CategoryItem(image: "assets/breakfast.png", text: "Breakfast"),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: "assets/dinner.png", text: "Dinner"),
              CategoryItem(image: "assets/vegan.png", text: "Vegan"),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(image: 'assets/dessert.png', text: "Dessert"),
              CategoryItem(image: "assets/drinks.png", text: "Drinks"),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: 159,
            height: 145,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }
}

class MainCategoryItem extends StatelessWidget {
  const MainCategoryItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        const SizedBox(height: 6),
        Center(
          child: SizedBox(
            width: 356,
            height: 149,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


