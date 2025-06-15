import 'package:confesso/screens/home/home_fyp.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confesso'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: const HomeFYP(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('pressed');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating Action Button Pressed')),
          );
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        items: [
          buildBottomNavigationBarItem(
            Icons.home_filled,
            'Home',
            true,
          ),
          buildBottomNavigationBarItem(
            Icons.search,
            'Search',
            false,
          ),
          buildBottomNavigationBarItem(
            Icons.notifications,
            'Notifications',
            false,
          ),
          buildBottomNavigationBarItem(
            Icons.person,
            'Profile',
            false,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      IconData icon, String label, bool isSelected) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: isSelected ? Colors.blue[600] : Colors.grey[600],
      ),
      label: label,
    );
  }
}
