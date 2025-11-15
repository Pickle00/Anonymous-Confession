import 'dart:math';

import 'package:confesso/blocs/homepage_cubit/homepage_cubit.dart';
import 'package:confesso/models/model.dart';
import 'package:confesso/theme/post_college_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCard extends StatelessWidget {
  final String id;
  final String username;
  final String profilePicture;
  final String postContent;
  final List<String> tags;
  final String college;
  final int likes;
  final List<CommentModel> comments;
  final List<Attachment> attachments;
  final int disLikes;
  final DateTime createdAt;
  const PostCard({
    super.key,
    required this.id,
    required this.username,
    required this.profilePicture,
    required this.postContent,
    required this.tags,
    required this.college,
    required this.likes,
    required this.comments,
    required this.disLikes,
    required this.attachments,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    final randomPair = colorPairs[Random().nextInt(colorPairs.length)];
    final bgColor = hexToColor(randomPair['bg']!);
    final textColor = hexToColor(randomPair['text']!);

    final timeAgo = timeago.format(createdAt);
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5),
        ),
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
                      timeAgo,
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 2),
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.transparent),
                      ),
                      child: Text(
                        '🎓 $college',
                        style: TextStyle(
                          color: textColor,
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
                if (attachments.isNotEmpty) ...[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(
                      attachments.first.attachment,
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
                Wrap(
                  runSpacing: 5,
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
                    InkResponse(
                      radius: 20,
                      onTap: () {
                        context.read<HomepageCubit>().upVote(id);
                      },
                      child: Icon(
                        Icons.keyboard_arrow_up_rounded,
                        size: 24,
                        color: Colors.green[600],
                      ),
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
                    InkResponse(
                      radius: 20,
                      onTap: () {
                        context.read<HomepageCubit>().downVote(id);
                      },
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 24,
                        color: Colors.red[600],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      disLikes.toString(),
                      style: const TextStyle(
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
                    Text(
                      comments.length.toString(),
                      style: const TextStyle(
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

  Color hexToColor(String hex) {
    return Color(int.parse(hex.replaceFirst('#', '0xFF')));
  }
}
