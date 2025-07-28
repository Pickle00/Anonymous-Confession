import 'package:confesso/screens/profile/widget/stats_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const Map<String, dynamic> _fypData = {
    'username': 'JohnDoe',
    'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
    'postContent': 'This is a sample post content. Check it out!.',
    'tags': ['#example', '#flutter'],
    'college': 'Sample University',
    'likes': 120,
    'comments': [
      {'username': 'JaneDoe', 'comment': 'Great post!'},
      {'username': 'User123', 'comment': 'Thanks for sharing!'},
    ]
  };

  ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              _fypData['profilePicture'],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _fypData['username'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Member since September 2024',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              _fypData['college'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const SizedBox(height: 5),
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileStats(
                            count: '2',
                            textColor: Colors.blue[600],
                            label: 'Confessions'),
                        ProfileStats(
                            count: '59',
                            textColor: Colors.green[600],
                            label: 'Confessions'),
                        ProfileStats(
                            count: '2',
                            textColor: Colors.blue[600],
                            label: 'Confessions'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: Colors.grey[100],
              width: double.infinity,
              child: ValueListenableBuilder(
                valueListenable: selectedIndex,
                builder: (context, index, _) {
                  return CupertinoSegmentedControl<int>(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    selectedColor: Colors.blue[600],
                    unselectedColor: Colors.white,
                    borderColor: Colors.transparent,
                    pressedColor: Colors.grey[100],
                    groupValue: selectedIndex.value,
                    children: const {
                      0: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text('My Confessions'),
                      ),
                      1: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text('My Comments'),
                      ),
                    },
                    onValueChanged: (int newValue) {
                      selectedIndex.value = newValue;
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
