import 'package:flutter/material.dart';
import 'package:hussain_new_project/Screens/screen_four.dart';
import 'package:hussain_new_project/Screens/screen_three.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexValue = 0;

  List<Widget> screens = [
    // const ScreenOne(),
    // const ScrennTwo(),
    const ScreenThree(),
    const ScreenFour(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[indexValue],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          indexValue = index;
          setState(() {});
        },
        currentIndex: indexValue,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(size: 28),
        unselectedIconTheme: const IconThemeData(size: 20),
        selectedFontSize: 15,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image_rounded,
            ),
            label: 'Design',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
