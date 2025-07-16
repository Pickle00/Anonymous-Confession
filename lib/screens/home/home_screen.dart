import 'package:confesso/screens/home/home_fyp.dart';
import 'package:confesso/screens/profile/profile.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: const Text('Confesso'),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedIndex,
        builder: (context, value, child) {
          return IndexedStack(
            index: value,
            children: const [
              HomeFYP(),
              Center(child: Text('Search')),
              Center(child: Text('Notifications')),
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
              selectedItemColor: Colors.blue,
              selectedLabelStyle: const TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              currentIndex: selectedIndex.value,
              unselectedItemColor: Colors.black,
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
                  'Notifications',
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
      icon: Icon(
        icon,
        // color: isSelected ? Colors.blue[600] : Colors.grey[600],
      ),
      label: label,
    );
  }
}
