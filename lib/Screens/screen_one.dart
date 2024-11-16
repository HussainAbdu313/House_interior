import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'House Interior Designs',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
                return SearchBar(
                  controller: controller,
                  onTap: () {
                    controller.toString();
                  },
                  onChanged: (_) {
                    controller.toString();
                  },
                  leading: const Icon(
                    Icons.search,
                  ),
                  hintText: 'Search Designs & Products',
                );
              },
              suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List.generate(5, (int index) {
                  return const ListTile(
                    title: Text('sea'),
                  );
                });
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/Apartment 01.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 8,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enlargeCenterPage: true,
              // enlargeFactor: 0.2,
            ),
          ),
          Column(
            children: [
              Image.asset("assets/images/Avatar.jpg"),
              Image.asset("assets/images/Avatar.jpg"),
              Image.asset("assets/images/Avatar.jpg"),
            ],
          )
        ],
      ),
    );
  }
}
