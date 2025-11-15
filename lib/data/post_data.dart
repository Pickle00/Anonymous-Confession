import 'package:confesso/models/model.dart';

List<PostModel> createDummyPosts() {
  return [
    PostModel(
      id: '1',
      username: 'MysteryMomo',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
      postContent:
          'Accidentally submitted grocery list instead of the assignment… professors probably laughing 😅 #assignmentFail',
      tags: ['#oops', '#collegeLife'],
      college: 'Tribhuvan University',
      upvote: 78,
      downvote: 3,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c1',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: '😂 Momo over assignments, relatable!',
          timeAgo: '2h',
          likes: 15,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r1',
              username: 'SilentNoodle',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
              content:
                  'Next time add a chocolate recipe, maybe extra credit 🥟',
              timeAgo: '1h',
              likes: 7,
              dislikes: 0,
            ),
            ReplyModel(
              id: 'r2',
              username: 'TeaTiger',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
              content:
                  'Prof will probably star your work as “creative submission” 😏',
              timeAgo: '30m',
              likes: 5,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c2',
          username: 'RamenRogue',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content: 'I would have laughed too. Relatable!! 🤣',
          timeAgo: '3h',
          likes: 12,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r3',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content:
                  'Imagine if everyone submitted grocery lists, campus chaos guaranteed 😂',
              timeAgo: '2h',
              likes: 8,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c3',
          username: 'BreadNButter',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/2907/2907197.png',
          content:
              'I once sent my grocery receipt to my teacher… she replied “nice shopping” 🤦‍♂️',
          timeAgo: '1h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    PostModel(
      id: '2',
      username: 'GuffGuff123',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent: 'Hostel ghost steals only left socks… why me? 🧦👻',
      tags: ['#hostelLife', '#funny'],
      college: 'Purbanchal University',
      upvote: 60,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c4',
          username: 'BreadNButter',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/2907/2907197.png',
          content: 'Label your socks “Mero ho!” maybe ghost will respect 😂',
          timeAgo: '3h',
          likes: 20,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r4',
              username: 'TeaTiger',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
              content: 'Ghost probably drinks chai too ☕👻',
              timeAgo: '2h',
              likes: 5,
              dislikes: 0,
            ),
            ReplyModel(
              id: 'r5',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content: 'Maybe it has a secret sock collection somewhere 🧦😅',
              timeAgo: '1h',
              likes: 4,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c5',
          username: 'NoodleNinja',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content:
              'My slippers got stolen last week… hostel ghost confirmed 🏃‍♂️👻',
          timeAgo: '2h',
          likes: 12,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r6',
              username: 'ChocoLover99',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
              content: 'Ghosts are upgrading to sneakers now 😆',
              timeAgo: '1h',
              likes: 7,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c6',
          username: 'SleepyBun',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Should I sleep with socks on or double socks? 🤔',
          timeAgo: '30m',
          likes: 5,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '3',
      username: 'SilentPigeon',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Sneezed 3 times in math exam… teacher thinks I am allergic to math 😷📚 #examLife',
      tags: ['#funny', '#collegeProblems'],
      college: 'Kathmandu University',
      upvote: 45,
      downvote: 1,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c7',
          username: 'BubbleTeaLover',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/869/869636.png',
          content: 'Same happened to me in Physics 😭 I just froze 😂',
          timeAgo: '1h',
          likes: 12,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r7',
              username: 'TeaTiger',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
              content: 'Math teachers are like allergy detectives 🤣',
              timeAgo: '45m',
              likes: 5,
              dislikes: 0,
            ),
            ReplyModel(
              id: 'r8',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content:
                  'I just waved at the teacher and sneezed dramatically 😎',
              timeAgo: '30m',
              likes: 4,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c8',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'Maybe sneeze on every question, instant sympathy points 🤧',
          timeAgo: '2h',
          likes: 8,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 2)),
    ),
    PostModel(
      id: '4',
      username: 'ChaiAddict',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
      postContent:
          'Every time the WiFi goes down, I suddenly remember all the assignments I forgot to submit 🤯',
      tags: ['#wifiProblems', '#collegeLife', '#procrastination'],
      college: 'Pokhara University',
      upvote: 90,
      downvote: 5,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c9',
          username: 'LateNightPizza',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046787.png',
          content: 'WiFi off = panic mode activated 😭',
          timeAgo: '30m',
          likes: 18,
          dislikes: 1,
          replies: [
            ReplyModel(
              id: 'r9',
              username: 'NoodleNinja',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
              content:
                  'I literally start drafting excuses for late submission 😂',
              timeAgo: '15m',
              likes: 7,
              dislikes: 0,
            ),
            ReplyModel(
              id: 'r10',
              username: 'SleepyBun',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content:
                  'Same! Then I realize the assignment was due 2 weeks ago 🤦‍♂️',
              timeAgo: '5m',
              likes: 6,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c10',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'WiFi outage = survival test of college life 😂',
          timeAgo: '1h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
    PostModel(
      id: '5',
      username: 'LazyLlama',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent: 'The library AC is colder than my future 🥶',
      tags: ['#libraryLife', '#funny', '#collegeLife'],
      college: 'Kathmandu University',
      upvote: 50,
      downvote: 1,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c11',
          username: 'CaffeineCow',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'I brought 3 jackets and still freezing 😅',
          timeAgo: '2h',
          likes: 10,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r11',
              username: 'ChocoLover99',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
              content: 'Library AC: 1, Us: 0 🥶😂',
              timeAgo: '1h',
              likes: 6,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c12',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'I think the AC is plotting against students 😆',
          timeAgo: '30m',
          likes: 7,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 3)),
    ),
    PostModel(
      id: '6',
      username: 'NoodleNinja',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
      postContent:
          'I eat instant noodles 4 times a week… is this a lifestyle? 🍜',
      tags: ['#hostelLife', '#foodie', '#collegeLife'],
      college: 'Purbanchal University',
      upvote: 66,
      downvote: 0,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c13',
          username: 'RamenRogue',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content: 'Respect the dedication 🥢',
          timeAgo: '1h',
          likes: 8,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r12',
              username: 'MysteryMomo',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
              content: 'Just make sure it’s not “expired noodles” day 😅',
              timeAgo: '30m',
              likes: 4,
              dislikes: 0,
            ),
            ReplyModel(
              id: 'r13',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content:
                  'Noodles > Sleep > Class… the triangle of hostel life 😂',
              timeAgo: '15m',
              likes: 6,
              dislikes: 0,
            ),
          ],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 7)),
    ),
    PostModel(
      id: '7',
      username: 'ChocoLover99',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
      postContent:
          'I hide chocolates in the library to avoid sharing with my roommate 🍫 #hostelLife',
      tags: ['#funny', '#libraryLife', '#hostelLife'],
      college: 'Pokhara University',
      upvote: 55,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c14',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Smart move! 😏',
          timeAgo: '45m',
          likes: 5,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r14',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content:
                  'Imagine someone finds it and starts a chocolate war 🍫⚔️',
              timeAgo: '20m',
              likes: 3,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c15',
          username: 'NoodleNinja',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content:
              'I once hid cookies in my bag… roommate discovered 2 weeks later 😂',
          timeAgo: '1h',
          likes: 4,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '11',
      username: 'BubbleTeaLover',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/869/869636.png',
      postContent: 'Accidentally spilled chai on my notes… RIP exam prep ☕😭',
      tags: ['#hostelLife', '#funny', '#chaiProblems'],
      college: 'Pokhara University',
      upvote: 83,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c22',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'Classic! Happens to the best of us 😅',
          timeAgo: '1h',
          likes: 14,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r18',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content: 'Tea stains are eternal… RIP notes 😭',
              timeAgo: '30m',
              likes: 7,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c23',
          username: 'NoodleNinja',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content:
              'I once used my tea-soaked notes as a coaster… still worked 😎',
          timeAgo: '2h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '12',
      username: 'RamenRogue',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1046/1046787.png',
      postContent:
          'Wifi in hostel only works when it rains… what sorcery is this? 🌧️📶',
      tags: ['#wifiLife', '#hostelStruggles', '#funny'],
      college: 'Tribhuvan University',
      upvote: 95,
      downvote: 3,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c24',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Rain = free internet, I see 😏',
          timeAgo: '3h',
          likes: 18,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r19',
              username: 'SleepyBun',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content: 'And only in the hallway 😭',
              timeAgo: '2h',
              likes: 12,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c25',
          username: 'MysteryMomo',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
          content: 'Hostel internet logic: rain = working, sun = disaster 😂',
          timeAgo: '1h',
          likes: 15,
          dislikes: 1,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
    PostModel(
      id: '13',
      username: 'LazyLlama',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Skipped breakfast, lunch, and dinner… survived on instant noodles only 🍜 #hostelLife',
      tags: ['#foodie', '#collegeStruggles', '#funny'],
      college: 'Kathmandu University',
      upvote: 88,
      downvote: 1,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c26',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'Respect the commitment 😂',
          timeAgo: '2h',
          likes: 12,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r20',
              username: 'BubbleTeaLover',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/869/869636.png',
              content: 'Soon you’ll ascend to the noodle god tier 🍜👑',
              timeAgo: '1h',
              likes: 9,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c27',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Noodles > everything else, true college mantra 😎',
          timeAgo: '30m',
          likes: 7,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    PostModel(
      id: '14',
      username: 'SilentPigeon',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Teacher asked a question… I froze and gave my last name as answer 😭 #examLife',
      tags: ['#examFails', '#collegeLife', '#funny'],
      college: 'Purbanchal University',
      upvote: 72,
      downvote: 5,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c28',
          username: 'LazyLlama',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Classic panic mode 🤣',
          timeAgo: '1h',
          likes: 10,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r21',
              username: 'MysteryMomo',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
              content:
                  'I once answered “I don’t know” in 5 languages… still got 0 marks 😂',
              timeAgo: '30m',
              likes: 6,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c29',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Next time, just smile and nod 😎',
          timeAgo: '2h',
          likes: 5,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 3)),
    ),
    PostModel(
      id: '15',
      username: 'GuffGuff123',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Hostel ghost keeps moving my slippers… now I leave decoy slippers 😈👻',
      tags: ['#hostelLife', '#funny', '#pranks'],
      college: 'Tribhuvan University',
      upvote: 91,
      downvote: 0,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c30',
          username: 'RamenRogue',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content: 'Decoy slippers = genius 😂',
          timeAgo: '2h',
          likes: 12,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r22',
              username: 'LazyLlama',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content: 'Next level hostel strategy 👏',
              timeAgo: '1h',
              likes: 9,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'c31',
          username: 'SleepyBun',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'I need ghost-proof slippers ASAP 😭',
          timeAgo: '30m',
          likes: 7,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '16',
      username: 'ChaiAddict',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
      postContent:
          'Hostel power goes out during online class… had to write notes by candlelight 🕯️😂',
      tags: ['#hostelLife', '#funny', '#onlineClass'],
      college: 'Pokhara University',
      upvote: 88,
      downvote: 3,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c32',
          username: 'LazyLlama',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Candlelight study vibes 😎',
          timeAgo: '1h',
          likes: 11,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r23',
              username: 'MysteryMomo',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
              content: 'Hope no mosquito joined the class 😂',
              timeAgo: '30m',
              likes: 6,
              dislikes: 0,
            ),
          ],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 7)),
    ),
    PostModel(
      id: '17',
      username: 'TeaTiger',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
      postContent:
          'Library chair broke under me… survived but ego shattered 🤦‍♂️ #collegeFails',
      tags: ['#libraryLife', '#funny', '#hostelLife'],
      college: 'Kathmandu University',
      upvote: 70,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c33',
          username: 'RamenRogue',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content: 'Ouch! Hope you didn’t spill your noodles 😂',
          timeAgo: '1h',
          likes: 9,
          dislikes: 0,
          replies: [],
        ),
        CommentModel(
          id: 'c34',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'Chair 1 – Student 0 😎',
          timeAgo: '30m',
          likes: 8,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
    PostModel(
      id: '18',
      username: 'SilentPigeon',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Accidentally submitted my messy handwritten notes as final assignment… teacher probably cried 😭',
      tags: ['#assignmentFail', '#funny', '#collegeLife'],
      college: 'Tribhuvan University',
      upvote: 82,
      downvote: 4,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c35',
          username: 'SleepyBun',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Handwritten chaos vibes 😎',
          timeAgo: '2h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
        CommentModel(
          id: 'c36',
          username: 'ChaiAddict',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Teacher probably framed it 🤣',
          timeAgo: '1h',
          likes: 9,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '19',
      username: 'LazyLlama',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Accidentally slept in class… woke up to everyone staring 👀 #sleepyStudent',
      tags: ['#funny', '#collegeLife', '#hostelStruggles'],
      college: 'Purbanchal University',
      upvote: 68,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c37',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Story of my life 😭',
          timeAgo: '1h',
          likes: 7,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r24',
              username: 'MysteryMomo',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
              content: 'Next time, bring an espresso shot 😏',
              timeAgo: '30m',
              likes: 5,
              dislikes: 0,
            ),
          ],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    PostModel(
      id: '20',
      username: 'RamenRogue',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
      postContent:
          'Forgot my wallet in hostel… ended up eating instant noodles for free at friend’s room 😅 #hostelLife',
      tags: ['#collegeLife', '#funny', '#foodie'],
      college: 'Kathmandu University',
      upvote: 77,
      downvote: 1,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c38',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'True friendship = free noodles 🍜',
          timeAgo: '1h',
          likes: 11,
          dislikes: 0,
          replies: [],
        ),
        CommentModel(
          id: 'c39',
          username: 'SleepyBun',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Wallet 0 – Friendship 1 😎',
          timeAgo: '30m',
          likes: 9,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 3)),
    ),
    PostModel(
      id: '21',
      username: 'MomoMonster',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
      postContent:
          'Roommate ate my momo stash… vengeance plan activated 😈 #hostelLife',
      tags: ['#funny', '#pranks', '#foodie'],
      college: 'Pokhara University',
      upvote: 91,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c40',
          username: 'ChaiSprinkle',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Classic food war in hostel 😂',
          timeAgo: '1h',
          likes: 12,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r25',
              username: 'LazyLettuce',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/616/616408.png',
              content: 'Next time hide them in a secret pocket 🥷',
              timeAgo: '30m',
              likes: 7,
              dislikes: 0,
            ),
          ],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
    PostModel(
      id: '22',
      username: 'ExamPhantom',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent: 'Studied all night, slept through exam… life is cruel 😭',
      tags: ['#examLife', '#funny', '#collegeStruggles'],
      college: 'Tribhuvan University',
      upvote: 84,
      downvote: 3,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c41',
          username: 'NoodleKnight',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
          content: 'Same happened to me last semester 😅',
          timeAgo: '2h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '23',
      username: 'ChocoWizard',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
      postContent: 'Hid my chocolate behind textbooks… genius move 😎',
      tags: ['#hostelLife', '#funny', '#foodie'],
      college: 'Kathmandu University',
      upvote: 76,
      downvote: 1,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c42',
          username: 'SleepyDragon',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Stealth mode activated 🍫',
          timeAgo: '1h',
          likes: 8,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    PostModel(
      id: '24',
      username: 'CoffeeCat',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/869/869636.png',
      postContent:
          'Coffee spilled on laptop… final assignment gone 😭 #collegeLife',
      tags: ['#hostelLife', '#funny', '#disaster'],
      college: 'Purbanchal University',
      upvote: 82,
      downvote: 4,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c43',
          username: 'MomoMonster',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
          content: 'Laptop 0 – Coffee 1 ☕😂',
          timeAgo: '1h',
          likes: 11,
          dislikes: 0,
          replies: [],
        ),
        CommentModel(
          id: 'c44',
          username: 'LazyLettuce',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'RIP assignment 😭',
          timeAgo: '30m',
          likes: 6,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 3)),
    ),
    PostModel(
      id: '25',
      username: 'SleepyTiger',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/616/616408.png',
      postContent:
          'Skipped class to binge Netflix… grades are praying for mercy 🙏😂',
      tags: ['#collegeLife', '#funny', '#procrastination'],
      college: 'Tribhuvan University',
      upvote: 90,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c45',
          username: 'ChocoWizard',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'Netflix > Exams 😎',
          timeAgo: '1h',
          likes: 12,
          dislikes: 0,
          replies: [],
        ),
        CommentModel(
          id: 'c46',
          username: 'CoffeeCat',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/869/869636.png',
          content: 'Me too 😅',
          timeAgo: '45m',
          likes: 8,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 6)),
    ),
    PostModel(
      id: '26',
      username: 'RamenSamurai',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1046/1046787.png',
      postContent:
          'Hostel Wi-Fi is slower than snail on vacation 🐌 #collegeStruggles',
      tags: ['#wifiProblems', '#funny', '#hostelLife'],
      college: 'Kathmandu University',
      upvote: 79,
      downvote: 2,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c47',
          username: 'BubbleTeaLover',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/869/869636.png',
          content: 'Wi-Fi dies whenever assignment is due 😭',
          timeAgo: '1h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    PostModel(
      id: '27',
      username: 'NoodleWizard',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
      postContent:
          'Teacher said “open your books”… I panicked and opened my notebook upside down 🤦‍♂️ #examLife',
      tags: ['#examFails', '#funny', '#collegeLife'],
      college: 'Tribhuvan University',
      upvote: 88,
      downvote: 1,
      attachments: [
        const Attachment(
          attachment:
              'https://scontent.fktm3-1.fna.fbcdn.net/v/t39.30808-6/485409460_4153951451551013_6548363767622532935_n.jpg?_nc_cat=104&cb2=99be929b-bd9a46d7&ccb=1-7&_nc_sid=833d8c&_nc_ohc=WNxD0miLehEQ7kNvwF7jZIO&_nc_oc=AdlDsavw8ifPmT55eX5QI-enjOIOpbq9gz4U5D6erU_O2IU6BwBZs77C2MGgAe16lmc&_nc_zt=23&_nc_ht=scontent.fktm3-1.fna&_nc_gid=GSf0kJ-OCcgmTOy4faRFMQ&oh=00_Afj0K-kSAEYmoKp9SfP3JpvuzShJU7IuiQDheky8tFktcQ&oe=691A90B4',
        )
      ],
      comments: [
        CommentModel(
          id: 'c48',
          username: 'ChocoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
          content: 'Classic panic moment 😂',
          timeAgo: '1h',
          likes: 12,
          dislikes: 0,
          replies: [],
        ),
        CommentModel(
          id: 'c49',
          username: 'LazyLettuce',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'Next time, breathe first 😅',
          timeAgo: '45m',
          likes: 8,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
    PostModel(
      id: '28',
      username: 'CoffeePenguin',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/869/869636.png',
      postContent:
          'Library AC broke… sweating like I ran a marathon just reading 😭 #hostelLife',
      tags: ['#libraryProblems', '#funny', '#collegeLife'],
      college: 'Pokhara University',
      upvote: 82,
      downvote: 3,
      attachments: [],
      comments: [
        CommentModel(
          id: 'c50',
          username: 'SleepyTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/616/616408.png',
          content: 'AC = life, library = oven 🔥',
          timeAgo: '1h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 3)),
    ),
    PostModel(
      id: '29',
      username: 'MomoNinja',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
      postContent:
          'Friend borrowed my notes… returned 50% scribbled with doodles 😑 #collegeLife',
      tags: ['#funny', '#hostelLife', '#friendship'],
      college: 'Kathmandu University',
      upvote: 75,
      downvote: 1,
      attachments: [
        const Attachment(
          attachment:
              'https://scontent.fktm3-1.fna.fbcdn.net/v/t39.30808-6/491920936_1387395782696847_1149999002316589459_n.jpg?_nc_cat=102&cb2=99be929b-bd9a46d7&ccb=1-7&_nc_sid=833d8c&_nc_ohc=xLCEqSkaposQ7kNvwEjRBqw&_nc_oc=AdllHCAz2a2Z_B_jUhXb5_G7TiIy8Zsy3lr74v5-LUQyCGB9B-R9FpTbmFuRvdVBC9A&_nc_zt=23&_nc_ht=scontent.fktm3-1.fna&_nc_gid=CvXB_cFqe7NRY6-5l_-kXg&oh=00_AfhoapmKvQiV7g0JQ9fW4lflcSG3iEs9GkQ1NufYT1OlGg&oe=691AAB61',
        )
      ],
      comments: [
        CommentModel(
          id: 'c51',
          username: 'TeaTiger',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
          content: 'Doodles > actual notes 😎',
          timeAgo: '1h',
          likes: 9,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 4)),
    ),
    PostModel(
      id: '30',
      username: 'ChocoDragon',
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
      postContent:
          'Printed assignments got lost in hostel printer… life choices 😭',
      tags: ['#hostelLife', '#funny', '#collegeStruggles'],
      college: 'Tribhuvan University',
      upvote: 85,
      downvote: 2,
      attachments: [
        const Attachment(
          attachment:
              'https://scontent.fktm3-1.fna.fbcdn.net/v/t39.30808-6/488885486_1375587623877663_9149063343363570893_n.jpg?_nc_cat=103&cb2=99be929b-bd9a46d7&ccb=1-7&_nc_sid=833d8c&_nc_ohc=k3hl4Z3BbBwQ7kNvwFpV0HF&_nc_oc=Admu1GS9hAjoLLwMSdnR7g_KIUrQh_uM9MFzHGnylgsKtf_AObkmOaLkj33XY69bTJI&_nc_zt=23&_nc_ht=scontent.fktm3-1.fna&_nc_gid=EWvx4ZrFXSZ5r52m5a7Y4Q&oh=00_AfhzgvcPlCH6SGT48wHGmm_7ApwW2HA-8ApUXjlZCHCnnA&oe=691A91D4',
        )
      ],
      comments: [
        CommentModel(
          id: 'c52',
          username: 'BubbleTeaLover',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/869/869636.png',
          content: 'Printer strikes back 😂',
          timeAgo: '2h',
          likes: 10,
          dislikes: 0,
          replies: [],
        ),
      ],
      createdAt: DateTime.now().subtract(Duration(hours: 5)),
    ),
  ];
}
