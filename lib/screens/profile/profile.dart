import 'package:confesso/screens/profile/widget/comment_widget.dart';
import 'package:confesso/screens/profile/widget/stats_widget.dart';
import 'package:confesso/screens/profile/widget/user_post.dart';
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

  List<Map<String, dynamic>> userConfessions = [
    {
      "id": "post_1",
      "userId": "user_1",
      "username": "StudyBuddy_Mike",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Stanford University",
      "postContent":
          "I've been struggling with exam anxiety lately. Anyone else feeling overwhelmed with finals coming up? Looking for some study tips and stress management techniques.",
      "tags": ["#exam", "#mentalhealth", "#stress", "#finals"],
      "timeAgo": "3h ago",
      "createdAt": "2025-08-03T08:00:00Z",
      "likes": 24,
      "dislikes": 2,
      "commentCount": 8,
      "isEdited": false
    },
    {
      "id": "post_2",
      "userId": "user_2",
      "username": "Anonymous_Owl",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "MIT",
      "postContent":
          "Feeling homesick in my first week at campus. Everything feels so different from home. How did you guys cope with the transition?",
      "tags": ["#freshman", "#homesick", "#college", "#newstudent"],
      "timeAgo": "5h ago",
      "createdAt": "2025-08-03T06:00:00Z",
      "likes": 15,
      "dislikes": 1,
      "commentCount": 12,
      "isEdited": false
    },
    {
      "id": "post_3",
      "userId": "user_3",
      "username": "Sarah_M",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Harvard University",
      "postContent":
          "Just finished my organic chemistry midterm and I think I bombed it 😭 Why is this subject so difficult? Any advice for bouncing back?",
      "tags": ["#organicchemistry", "#midterm", "#premed", "#struggle"],
      "timeAgo": "1d ago",
      "createdAt": "2025-08-02T14:30:00Z",
      "likes": 32,
      "dislikes": 0,
      "commentCount": 18,
      "isEdited": false
    },
    {
      "id": "post_4",
      "userId": "user_4",
      "username": "TechGuru_Alex",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "UC Berkeley",
      "postContent":
          "Anyone else finding it hard to make friends in college? I'm pretty introverted and all the social events seem overwhelming. Tips for shy people?",
      "tags": ["#introvert", "#friends", "#social", "#shy", "#advice"],
      "timeAgo": "2d ago",
      "createdAt": "2025-08-01T16:45:00Z",
      "likes": 67,
      "dislikes": 3,
      "commentCount": 25,
      "isEdited": true
    },
    {
      "id": "post_5",
      "userId": "user_5",
      "username": "CoffeeAddict_Emma",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "NYU",
      "postContent":
          "I secretly have a crush on my professor, but I'm too shy to say anything. 😳 Is this normal? Has anyone been in a similar situation?",
      "tags": ["#crush", "#professor", "#shy", "#confession"],
      "timeAgo": "6h ago",
      "createdAt": "2025-08-03T05:00:00Z",
      "likes": 89,
      "dislikes": 12,
      "commentCount": 34,
      "isEdited": false
    },
    {
      "id": "post_6",
      "userId": "user_6",
      "username": "BookwormSarah",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Yale University",
      "postContent":
          "Finally finished my thesis after 6 months of research! 📚✨ The relief is real. To anyone working on their thesis - you got this!",
      "tags": [
        "#thesis",
        "#graduation",
        "#research",
        "#celebration",
        "#motivation"
      ],
      "timeAgo": "4h ago",
      "createdAt": "2025-08-03T07:00:00Z",
      "likes": 156,
      "dislikes": 1,
      "commentCount": 42,
      "isEdited": false
    },
    {
      "id": "post_7",
      "userId": "user_7",
      "username": "MathWhiz_Kevin",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Caltech",
      "postContent":
          "Pulled an all-nighter working on my calculus assignment. My brain feels like mush right now 🧠💭 Coffee isn't helping anymore...",
      "tags": ["#allnighter", "#calculus", "#tired", "#coffee", "#math"],
      "timeAgo": "2h ago",
      "createdAt": "2025-08-03T09:00:00Z",
      "likes": 43,
      "dislikes": 2,
      "commentCount": 15,
      "isEdited": false
    },
    {
      "id": "post_8",
      "userId": "user_8",
      "username": "ArtStudent_Lily",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "RISD",
      "postContent":
          "Does anyone else feel like they chose the wrong major? I love art but I'm worried about job prospects after graduation. Feeling lost...",
      "tags": ["#art", "#major", "#career", "#doubt", "#future"],
      "timeAgo": "8h ago",
      "createdAt": "2025-08-03T03:00:00Z",
      "likes": 78,
      "dislikes": 5,
      "commentCount": 29,
      "isEdited": false
    },
    {
      "id": "post_9",
      "userId": "user_9",
      "username": "SportsEnthusiast_Jake",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "University of Florida",
      "postContent":
          "Balancing sports and academics is harder than I thought. Practice takes up so much time and I'm falling behind in my classes. Any student athletes here with advice?",
      "tags": [
        "#studentathlete",
        "#balance",
        "#sports",
        "#academics",
        "#timemanagement"
      ],
      "timeAgo": "12h ago",
      "createdAt": "2025-08-02T23:00:00Z",
      "likes": 91,
      "dislikes": 4,
      "commentCount": 37,
      "isEdited": false
    },
    {
      "id": "post_10",
      "userId": "user_10",
      "username": "InternationalStudent_Ana",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "University of Washington",
      "postContent":
          "Being an international student is tough. Missing home, dealing with cultural differences, and the language barrier in some classes. Anyone else struggling with this?",
      "tags": [
        "#international",
        "#homesick",
        "#culture",
        "#language",
        "#support"
      ],
      "timeAgo": "1d ago",
      "createdAt": "2025-08-02T11:00:00Z",
      "likes": 124,
      "dislikes": 2,
      "commentCount": 51,
      "isEdited": false
    },
    {
      "id": "post_11",
      "userId": "user_11",
      "username": "GradStudent_Marcus",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Princeton University",
      "postContent":
          "Imposter syndrome is hitting hard in grad school. Everyone seems so much smarter than me. How do you deal with feeling like you don't belong?",
      "tags": [
        "#gradschool",
        "#impostersyndrome",
        "#confidence",
        "#mentalhealth",
        "#advice"
      ],
      "timeAgo": "3d ago",
      "createdAt": "2025-07-31T15:30:00Z",
      "likes": 203,
      "dislikes": 1,
      "commentCount": 68,
      "isEdited": false
    },
    {
      "id": "post_12",
      "userId": "user_12",
      "username": "PartyPlanner_Sophie",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "UCLA",
      "postContent":
          "Organizing a study group for Economics. Anyone interested? We could meet at the library every Tuesday and Thursday evening. Let's ace this class together! 📈",
      "tags": [
        "#studygroup",
        "#economics",
        "#collaboration",
        "#library",
        "#teamwork"
      ],
      "timeAgo": "7h ago",
      "createdAt": "2025-08-03T04:00:00Z",
      "likes": 56,
      "dislikes": 0,
      "commentCount": 22,
      "isEdited": false
    },
    {
      "id": "post_13",
      "userId": "user_13",
      "username": "NightOwl_David",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "University of Chicago",
      "postContent":
          "Can't sleep because of stress about my upcoming presentation. It's 3 AM and I'm still rehearsing. Anyone else have trouble sleeping during stressful times?",
      "tags": ["#insomnia", "#stress", "#presentation", "#anxiety", "#sleep"],
      "timeAgo": "9h ago",
      "createdAt": "2025-08-03T02:00:00Z",
      "likes": 39,
      "dislikes": 1,
      "commentCount": 16,
      "isEdited": false
    },
    {
      "id": "post_14",
      "userId": "user_14",
      "username": "FoodLover_Maria",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "University of Texas",
      "postContent":
          "Dining hall food is getting old. Anyone know good, cheap places to eat near campus? Budget is tight but I need some variety in my diet!",
      "tags": ["#food", "#budget", "#campus", "#recommendations", "#student"],
      "timeAgo": "14h ago",
      "createdAt": "2025-08-02T21:00:00Z",
      "likes": 72,
      "dislikes": 3,
      "commentCount": 31,
      "isEdited": false
    },
    {
      "id": "post_15",
      "userId": "user_15",
      "username": "TechStartup_Ryan",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Carnegie Mellon",
      "postContent":
          "Working on a startup idea while in college. It's exciting but also overwhelming. How do you balance entrepreneurship with coursework? Any fellow student entrepreneurs here?",
      "tags": [
        "#startup",
        "#entrepreneur",
        "#business",
        "#balance",
        "#innovation"
      ],
      "timeAgo": "1d ago",
      "createdAt": "2025-08-02T10:15:00Z",
      "likes": 145,
      "dislikes": 7,
      "commentCount": 44,
      "isEdited": true
    },
    {
      "id": "post_16",
      "userId": "user_16",
      "username": "EnvironmentActivist_Grace",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "UC Davis",
      "postContent":
          "Started a campus sustainability initiative! We're trying to reduce plastic waste in dining halls. Who wants to join our green movement? 🌱♻️",
      "tags": [
        "#sustainability",
        "#environment",
        "#activism",
        "#campus",
        "#green"
      ],
      "timeAgo": "5d ago",
      "createdAt": "2025-07-29T13:00:00Z",
      "likes": 267,
      "dislikes": 8,
      "commentCount": 73,
      "isEdited": false
    },
    {
      "id": "post_17",
      "userId": "user_17",
      "username": "MusicMajor_Tyler",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Berklee College of Music",
      "postContent":
          "Just finished composing my first symphony! It took 4 months but I'm finally happy with it. Music majors, what's your biggest creative project this semester? 🎵",
      "tags": [
        "#music",
        "#composition",
        "#symphony",
        "#creative",
        "#accomplishment"
      ],
      "timeAgo": "2d ago",
      "createdAt": "2025-08-01T12:30:00Z",
      "likes": 94,
      "dislikes": 2,
      "commentCount": 26,
      "isEdited": false
    },
    {
      "id": "post_18",
      "userId": "user_18",
      "username": "PreLawStudent_Jessica",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Georgetown University",
      "postContent":
          "LSAT prep is consuming my life. Studying 8 hours a day and still feeling unprepared. Any tips from students who've been through this process?",
      "tags": ["#LSAT", "#prelaw", "#study", "#law", "#preparation"],
      "timeAgo": "4d ago",
      "createdAt": "2025-07-30T09:45:00Z",
      "likes": 112,
      "dislikes": 3,
      "commentCount": 39,
      "isEdited": false
    },
    {
      "id": "post_19",
      "userId": "user_19",
      "username": "PhilosophyStudent_Omar",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Columbia University",
      "postContent":
          "Having an existential crisis after my Philosophy of Mind class. Do we really have free will? These deep questions are keeping me up at night 🤔",
      "tags": [
        "#philosophy",
        "#existential",
        "#freewill",
        "#deepthoughts",
        "#mind"
      ],
      "timeAgo": "6d ago",
      "createdAt": "2025-07-28T18:20:00Z",
      "likes": 178,
      "dislikes": 12,
      "commentCount": 87,
      "isEdited": false
    },
    {
      "id": "post_20",
      "userId": "user_20",
      "username": "TransferStudent_Zoe",
      "profilePicture": "https://art.pixilart.com/7aed6ac0ceb9944.png",
      "college": "Vanderbilt University",
      "postContent":
          "Just transferred here and feeling like an outsider. Everyone already has their friend groups established. Any advice for transfer students on making connections?",
      "tags": [
        "#transfer",
        "#newstudent",
        "#friends",
        "#social",
        "#connections"
      ],
      "timeAgo": "1w ago",
      "createdAt": "2025-07-27T14:10:00Z",
      "likes": 89,
      "dislikes": 1,
      "commentCount": 33,
      "isEdited": false
    }
  ];

  List<Map<String, dynamic>> comments = [
    {
      'timeAgo': '5h ago',
      'originalPostQuote': 'Feeling homesick in my first week at campus...',
      'commentText':
          'That\'s so relatable! I felt the same way during my first semester.',
      'upvotes': 15,
      'isUpvoted': false,
    },
    {
      'timeAgo': '1d ago',
      'originalPostQuote': 'I\'ve been struggling with exam anxiety lately...',
      'commentText':
          'Have you tried the meditation sessions at the wellness center?',
      'upvotes': 8,
      'isUpvoted': true,
    },
    {
      'timeAgo': '3h ago',
      'originalPostQuote':
          'Anyone else finding it hard to make friends in college?',
      'commentText':
          'Join some clubs! That\'s how I met my best friends. The gaming club is really welcoming.',
      'upvotes': 23,
      'isUpvoted': false,
    },
  ];

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
            ),
            ValueListenableBuilder(
                valueListenable: selectedIndex,
                builder: (context, value, _) {
                  return selectedIndex.value == 0
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: userConfessions
                                .length, // Replace with actual count
                            itemBuilder: (context, index) {
                              return UserPost(
                                postContent: userConfessions[index]
                                    ['postContent'] as String,
                                tags: userConfessions[index]['tags']
                                    as List<String>,
                                college:
                                    userConfessions[index]['college'] as String,
                                timeAgo:
                                    userConfessions[index]['timeAgo'] as String,
                                likes: userConfessions[index]['likes'] as int,
                                commentCount: userConfessions[index]
                                    ['commentCount'] as int,
                                isProfileView: true,
                                onEdit: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Edit post')),
                                  );
                                },
                                onDelete: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text('Delete Post'),
                                      content: const Text(
                                          'Are you sure you want to delete this post?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content:
                                                      Text('Post deleted')),
                                            );
                                          },
                                          child: const Text('Delete',
                                              style:
                                                  TextStyle(color: Colors.red)),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                onUpvote: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Upvoted!')),
                                  );
                                },
                                onComment: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Open comments')),
                                  );
                                },
                                onTap: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Open post details')),
                                  );
                                },
                              );
                            },
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            itemCount: comments.length,
                            itemBuilder: (context, index) {
                              final comment = comments[index];
                              return CommentCard(
                                timeAgo: comment['timeAgo'],
                                originalPostQuote: comment['originalPostQuote'],
                                commentText: comment['commentText'],
                                upvotes: comment['upvotes'],
                                isUpvoted: comment['isUpvoted'],
                                // onUpvote: () => _toggleUpvote(index),
                                // onEdit: () => _editComment(index),
                                // onDelete: () => _deleteComment(index),
                              );
                            },
                          ),
                        );
                })
          ],
        ),
      ),
    );
  }
}
