import 'package:confesso/screens/home/home_fyp.dart';
import 'package:confesso/screens/notification/notification.dart';
import 'package:confesso/screens/profile/profile.dart';
import 'package:confesso/screens/search/search.dart';
import 'package:confesso/screens/utills/image_path_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, value, child) {
          return IndexedStack(
            index: value,
            children: const [
              HomeFYP(),
              SearchScreen(),
              NotificationScreen(),
              Profile(),
            ],
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (context, value, _) {
            return BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              selectedItemColor: Colors.black,
              selectedLabelStyle: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              currentIndex: selectedIndex.value,
              unselectedItemColor: Colors.grey,
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              onTap: (value) => selectedIndex.value = value,
              items: [
                buildBottomNavigationBarItem(
                  Icons.home_filled,
                  'Home',
                  selectedIndex.value == 0,
                ),
                buildBottomNavigationBarItem(
                  Icons.search,
                  'Search',
                  selectedIndex.value == 1,
                ),
                buildBottomNavigationBarItem(
                  Icons.notifications,
                  'Notification',
                  selectedIndex.value == 2,
                ),
                buildBottomNavigationBarItem(
                  Icons.person,
                  'Profile',
                  selectedIndex.value == 3,
                ),
              ],
            );
          }),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData icon, String label, bool isSelected) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        label.toLowerCase().svgIcon,
        colorFilter: ColorFilter.mode(
          isSelected ? Colors.black : Colors.grey,
          BlendMode.srcIn,
        ),
      ),
      // Icon(
      //   icon,
      //   color: isSelected ? Colors.blue[600] : Colors.grey[600],
      // ),

      label: label,
    );
  }
}
