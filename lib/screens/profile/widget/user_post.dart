import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String? username;
  final String? profilePicture;
  final String postContent;
  final List<String> tags;
  final String? college;
  final String timeAgo;
  final int likes;
  final int dislikes;
  final int commentCount;
  final bool isProfileView;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onUpvote;
  final VoidCallback? onDownvote;
  final VoidCallback? onComment;
  final VoidCallback? onTap;

  const UserPost({
    super.key,
    this.username,
    this.profilePicture,
    required this.postContent,
    required this.tags,
    this.college,
    required this.timeAgo,
    required this.likes,
    this.dislikes = 0,
    this.commentCount = 0,
    this.isProfileView = false,
    this.onEdit,
    this.onDelete,
    this.onUpvote,
    this.onDownvote,
    this.onComment,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
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
            // Header Row
            Row(
              children: [
                // Profile section (only for non-profile view)
                if (!isProfileView && username != null && profilePicture != null) ...[
                  CircleAvatar(
                    backgroundImage: NetworkImage(profilePicture!),
                    radius: 15,
                  ),
                  const SizedBox(width: 10),
                ],
                
                // Time and college info
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        timeAgo,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (college != null) ...[
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDBEAFE),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            '🎓 $college',
                            style: TextStyle(
                              color: Colors.blue[800],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                
                // Action buttons (only for profile view)
                if (isProfileView) ...[
                  if (onEdit != null)
                    IconButton(
                      onPressed: onEdit,
                      icon: const Icon(
                        Icons.edit_outlined,
                        size: 18,
                        color: Colors.blue,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  const SizedBox(width: 8),
                  if (onDelete != null)
                    IconButton(
                      onPressed: onDelete,
                      icon: const Icon(
                        Icons.delete_outline,
                        size: 18,
                        color: Colors.red,
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                ],
              ],
            ),
            
            // Username (only for non-profile view)
            if (!isProfileView && username != null) ...[
              const SizedBox(height: 8),
              Text(
                username!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
            
            const SizedBox(height: 12),
            
            // Post content
            Text(
              postContent,
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
              softWrap: true,
            ),
            
            const SizedBox(height: 12),
            
            // Tags
            if (tags.isNotEmpty) ...[
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: tags.map((tag) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey[400]!,
                      width: 0.8,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                )).toList(),
              ),
              const SizedBox(height: 12),
            ],
            
            // Interaction buttons
            Row(
              children: [
                // Upvote
                GestureDetector(
                  onTap: onUpvote,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_up_rounded,
                        size: 22,
                        color: Colors.green[600],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        likes.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(width: 16),
                
                // Downvote (if not profile view)
                if (!isProfileView) ...[
                  GestureDetector(
                    onTap: onDownvote,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 22,
                          color: Colors.red[600],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          dislikes.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                ],
                
                // Comments
                GestureDetector(
                  onTap: onComment,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.chat_bubble_outline,
                        size: 20,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(width: 4),
                      Text(
                        commentCount.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
