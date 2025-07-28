import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String preview;
  final String university;
  final String? comment;
  final String timeAgo;
  final bool isComment;

  const NotificationCard({
    super.key,
    required this.title,
    required this.preview,
    required this.university,
    this.comment,
    required this.timeAgo,
    this.isComment = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Top row: title + time ago
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isComment)
                const Icon(Icons.chat_bubble_outline,
                    size: 20, color: Colors.blue)
              else
                const Icon(Icons.expand_less, size: 20, color: Colors.green),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                timeAgo,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 12),

          /// Quote preview
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Preview
                Text(
                  '"$preview..."',
                  style: const TextStyle(color: Colors.black87),
                ),
                const SizedBox(height: 4),

                /// University pill
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    university,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),

                /// Optional comment
                if (comment != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    '“$comment”',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ]
              ],
            ),
          ),

          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Mark as read',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
