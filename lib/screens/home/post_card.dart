import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String username;
  final String profilePicture;
  final String postContent;
  final List<String> tags;
  final String college;
  final int likes;
  final List<Map<String, String>> comments;
  const PostCard(
      {super.key,
      required this.username,
      required this.profilePicture,
      required this.postContent,
      required this.tags,
      required this.college,
      required this.likes,
      required this.comments});

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profilePicture),
                radius: 15,
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '3 hr ago',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFFDBEAFE),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Text(
                        '🎓 $college',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  postContent,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: tags
                      .map((tag) => Container(
                            margin: const EdgeInsets.only(right: 5),
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey[500]!,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tag,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 24,
                      color: Colors.green[600],
                    ),
                    const SizedBox(width: 5),
                    Text(
                      likes.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 24,
                      color: Colors.red[600],
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '20',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Icon(
                      Icons.bubble_chart_outlined,
                      size: 24,
                      color: Colors.grey[800],
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '20',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
