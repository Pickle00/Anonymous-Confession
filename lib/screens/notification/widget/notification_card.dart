import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String authorName;
  final String? authorTag;
  final String timeAgo;
  final String mainComment;
  final String? replyComment;
  final VoidCallback? onMarkAsRead;
  final Color backgroundColor;
  final Color authorTagColor;
  final IconData? authorIcon;

  const NotificationCard({
    Key? key,
    required this.authorName,
    this.authorTag,
    required this.timeAgo,
    required this.mainComment,
    this.replyComment,
    this.onMarkAsRead,
    this.backgroundColor = Colors.white,
    this.authorTagColor = Colors.blue,
    this.authorIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with author info and timestamp
          Row(
            children: [
              // Profile icon
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  authorIcon ?? Icons.person,
                  size: 16,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 8),

              // Author name and tag
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(text: authorName),
                      if (authorTag != null) ...[
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: authorTag!,
                          style: TextStyle(
                            color: authorTagColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              // Timestamp
              Text(
                timeAgo,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Main comment
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.yellow.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.yellow.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Text(
              mainComment,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          // Reply comment (if exists)
          if (replyComment != null) ...[
            const SizedBox(height: 8),
            Container(
              margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.05),
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  left: BorderSide(
                    color: Colors.blue.withOpacity(0.3),
                    width: 3,
                  ),
                ),
              ),
              child: Text(
                replyComment!,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
          ],

          // Mark as read button
          if (onMarkAsRead != null) ...[
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: onMarkAsRead,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  'Mark as read',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
