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
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(10),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        college,
                        style:
                            const TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  postContent,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: tags
                      .map((tag) => Container(
                            margin: const EdgeInsets.only(right: 5),
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              tag,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                              ),
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.thumb_up,
                      size: 16,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      likes.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.thumb_down,
                      size: 16,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '20',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.comment,
                      size: 16,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '20',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
