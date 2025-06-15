import 'package:confesso/screens/home/post_card.dart';
import 'package:flutter/material.dart';

class HomeFYP extends StatefulWidget {
  const HomeFYP({super.key});

  @override
  State<HomeFYP> createState() => _HomeFYPState();
}

class _HomeFYPState extends State<HomeFYP> {
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
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) {
          return PostCard(
            username: _fypData['username'],
            profilePicture: _fypData['profilePicture'],
            postContent: _fypData['postContent'],
            tags: List<String>.from(_fypData['tags']),
            college: _fypData['college'],
            likes: _fypData['likes'],
            comments: List<Map<String, String>>.from(_fypData['comments']),
          );
        }),
      ),
    );
  }
}
