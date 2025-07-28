import 'package:confesso/router/router_path.dart';
import 'package:confesso/screens/home/post_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeFYP extends StatefulWidget {
  const HomeFYP({super.key});

  @override
  State<HomeFYP> createState() => _HomeFYPState();
}

class _HomeFYPState extends State<HomeFYP> {
  static const List<Map<String, dynamic>> dummyConfessions = [
    {
      'username': 'JohnDoe',
      'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
      'postContent':
          'I secretly have a crush on my professor, but I’m too shy to say anything. 😳',
      'tags': ['#crush', '#college', '#shy'],
      'college': 'Sample University',
      'likes': 150,
      'comments': [
        {'username': 'JaneDoe', 'comment': 'Same here! So relatable.'},
        {'username': 'Anon123', 'comment': 'Just go for it!'},
      ],
    },
    {
      'username': 'AliceSmith',
      'profilePicture': 'https://randomuser.me/api/portraits/women/44.jpg',
      'postContent':
          'Skipped class for the third time this week… but I swear I’m learning stuff on my own! 🤫',
      'tags': ['#skippedclass', '#college', '#studentlife'],
      'college': 'Tech Institute',
      'likes': 80,
      'comments': [
        {'username': 'Bob', 'comment': 'LOL same mood!'},
        {
          'username': 'StudyBuddy',
          'comment': 'Be careful or you’ll get caught!'
        },
      ],
    },
    {
      'username': 'ConfessKing',
      'profilePicture': 'https://randomuser.me/api/portraits/men/99.jpg',
      'postContent':
          'Anyone else think the campus coffee tastes like burnt socks? ☕️😂',
      'tags': ['#coffee', '#campuslife', '#funny'],
      'college': 'Code University',
      'likes': 210,
      'comments': [
        {'username': 'FlutterFan', 'comment': 'Hahaha yes! I bring my own.'},
        {'username': 'Coder123', 'comment': 'I’m offended, but kinda true!'},
      ],
    },
    {
      'username': 'MysteriousOne',
      'profilePicture': 'https://randomuser.me/api/portraits/women/68.jpg',
      'postContent':
          'That moment when you realize you studied for the wrong exam… 😩',
      'tags': ['#fail', '#exam', '#studentproblems'],
      'college': 'Hidden Valley College',
      'likes': 175,
      'comments': [
        {
          'username': 'AnonFan',
          'comment': 'Oof, happened to me last semester!'
        },
      ],
    },
    {
      'username': 'QuietGenius',
      'profilePicture': 'https://randomuser.me/api/portraits/men/10.jpg',
      'postContent':
          'Sometimes I feel like nobody notices me on campus. But hey, at least my grades are good! 📚',
      'tags': ['#introvert', '#college', '#grades'],
      'college': 'Elite Tech',
      'likes': 95,
      'comments': [
        {'username': 'SocialButterfly', 'comment': 'Hey, I notice you!'},
        {'username': 'QuietSupporter', 'comment': 'You’re not alone.'},
      ],
    },
  ];

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
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {
          context.push(AppRoutes.createPost);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.grey[100],
        color: Colors.blue[200],
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 5));
        },
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(dummyConfessions.length, (index) {
              return InkWell(
                splashColor: Colors.grey.withOpacity(0.1),
                onTap: () {
                  context.push(
                    AppRoutes.postScreen,
                  );
                },
                child: PostCard(
                  username: dummyConfessions[index]['username'],
                  profilePicture: dummyConfessions[index]['profilePicture'],
                  postContent: dummyConfessions[index]['postContent'],
                  tags: List<String>.from(dummyConfessions[index]['tags']),
                  college: dummyConfessions[index]['college'],
                  likes: dummyConfessions[index]['likes'],
                  comments: List<Map<String, String>>.from(
                      dummyConfessions[index]['comments']),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
