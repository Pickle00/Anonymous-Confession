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
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              boxShadow: [],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Row(
                    children: [
                      Column(
                        children: [
                          Text('2'),
                          Text(
                            'Confessions',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
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
