import 'package:confesso/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/homepage_cubit/homepage_cubit.dart';

class PostScreen extends StatefulWidget {
  final PostModel postData;

  const PostScreen({
    super.key,
    required this.postData,
  });

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<String> tags = ['#crush', '#college', '#shy'];
  String username = 'JohnDoe';
  String profilePicture = 'https://art.pixilart.com/7aed6ac0ceb9944.png';
  String postContent =
      'I secretly have a crush on my professor, but I\'m too shy to say anything. 😳';
  String college = 'Sample University';
  int likes = 150;

  final TextEditingController _commentController = TextEditingController();
  final TextEditingController _replyController = TextEditingController();
  String? _replyingToCommentId;

  // Sample comments data
  // List<Map<String, dynamic>> comments = [
  //   {
  //     'id': '1',
  //     'username': 'Sarah_M',
  //     'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //     'college': 'MIT',
  //     'content':
  //         'I totally understand! Professor crushes are so common. Maybe try talking to them after class about coursework first?',
  //     'timeAgo': '2h ago',
  //     'likes': 12,
  //     'dislikes': 1,
  //     'replies': [
  //       {
  //         'id': 'r1',
  //         'username': 'Anonymous_Owl',
  //         'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //         'college': 'Harvard',
  //         'content':
  //             'Great advice! Building a professional relationship first is always smart.',
  //         'timeAgo': '1h ago',
  //         'likes': 5,
  //         'dislikes': 0,
  //       },
  //       {
  //         'id': 'r2',
  //         'username': 'Study_Buddy',
  //         'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //         'content':
  //             'But remember, there are usually policies about student-teacher relationships!',
  //         'timeAgo': '45m ago',
  //         'likes': 8,
  //         'dislikes': 2,
  //       }
  //     ]
  //   },
  //   {
  //     'id': '2',
  //     'username': 'Mike_T',
  //     'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //     'college': 'Stanford',
  //     'content':
  //         'Been there! Just focus on your studies for now. These feelings usually pass.',
  //     'timeAgo': '3h ago',
  //     'likes': 8,
  //     'dislikes': 3,
  //     'replies': []
  //   },
  //   {
  //     'id': '3',
  //     'username': 'Advice_Giver',
  //     'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //     'content':
  //         'Maybe join office hours or study groups? It\'s a professional way to interact more!',
  //     'timeAgo': '1h ago',
  //     'likes': 15,
  //     'dislikes': 0,
  //     'replies': [
  //       {
  //         'id': 'r3',
  //         'username': 'Shy_Student',
  //         'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //         'college': 'UCLA',
  //         'content':
  //             'This is actually really good advice. Office hours are perfect for this!',
  //         'timeAgo': '30m ago',
  //         'likes': 3,
  //         'dislikes': 0,
  //       }
  //     ]
  //   },
  // ];

  @override
  void dispose() {
    _commentController.dispose();
    _replyController.dispose();
    super.dispose();
  }

  String _getTimeAgo(String timeAgo) {
    return timeAgo;
  }

  void _addComment() {
    if (_commentController.text.trim().isEmpty) return;

    // setState(() {
    //   comments.add({
    //     'id': DateTime.now().millisecondsSinceEpoch.toString(),
    //     'username': 'You',
    //     'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
    //     'college': 'Your College',
    //     'content': _commentController.text.trim(),
    //     'timeAgo': 'now',
    //     'likes': 0,
    //     'dislikes': 0,
    //     'replies': []
    //   });
    // });

    _commentController.clear();
    FocusScope.of(context).unfocus();
  }

  // void _addReply(String commentId) {
  //   if (_replyController.text.trim().isEmpty) return;

  //   setState(() {
  //     final commentIndex = comments.indexWhere((c) => c['id'] == commentId);
  //     if (commentIndex != -1) {
  //       comments[commentIndex]['replies'].add({
  //         'id': DateTime.now().millisecondsSinceEpoch.toString(),
  //         'username': 'You',
  //         'profilePicture': 'https://art.pixilart.com/7aed6ac0ceb9944.png',
  //         'content': _replyController.text.trim(),
  //         'timeAgo': 'now',
  //         'likes': 0,
  //         'dislikes': 0,
  //       });
  //     }
  //   });

  //   _replyController.clear();
  //   _replyingToCommentId = null;
  //   FocusScope.of(context).unfocus();
  // }

  void _showReplyInput(String commentId) {
    setState(() {
      _replyingToCommentId = commentId;
    });

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          top: 20,
          left: 16,
          right: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _replyController,
              autofocus: true,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Write a reply...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
                contentPadding: const EdgeInsets.all(16),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      _replyingToCommentId = null;
                    });
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // _addReply(commentId);
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Reply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComment(CommentModel comment) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(comment.profilePicture),
                radius: 16,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          comment.username,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          comment.timeAgo,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        if (comment.college != null) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: const Color(0xFFDBEAFE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              comment.college!,
                              style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      comment.content,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        InkResponse(
                          radius: 20,
                          onTap: () {
                            context
                                .read<HomepageCubit>()
                                .upVote(widget.postData.id);
                          },
                          child: Icon(
                            Icons.keyboard_arrow_up_rounded,
                            size: 18,
                            color: Colors.green[600],
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${comment.likes}',
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(width: 12),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 18,
                          color: Colors.red[600],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${comment.dislikes}',
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(width: 12),
                        GestureDetector(
                          onTap: () => _showReplyInput(comment.id),
                          child: Row(
                            children: [
                              Icon(Icons.reply,
                                  size: 16, color: Colors.grey[600]),
                              const SizedBox(width: 4),
                              Text(
                                'Reply',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
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
            ],
          ),

          // Replies section
          if (comment.replies.isNotEmpty) ...[
            const SizedBox(height: 12),
            Container(
              margin: const EdgeInsets.only(left: 28),
              child: Column(
                  children: List.generate(comment.replies.length, (index) {
                return _buildReply(comment.replies[index]);
              })),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildReply(ReplyModel reply) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.grey.shade300, width: 2),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(reply.profilePicture),
            radius: 12,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      reply.username,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      reply.timeAgo,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 11,
                      ),
                    ),
                    if (reply.college != null) ...[
                      const SizedBox(width: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 1),
                        decoration: BoxDecoration(
                          color: const Color(0xFFDBEAFE),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          reply.college!,
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  reply.content,
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.keyboard_arrow_up_rounded,
                        size: 16, color: Colors.green[600]),
                    const SizedBox(width: 2),
                    Text('${reply.likes}',
                        style: const TextStyle(fontSize: 11)),
                    const SizedBox(width: 8),
                    Icon(Icons.keyboard_arrow_down_rounded,
                        size: 16, color: Colors.red[600]),
                    const SizedBox(width: 2),
                    Text('${reply.dislikes}',
                        style: const TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Details'),
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      // Original Post
                      Ink(
                        padding: const EdgeInsets.only(bottom: 16, top: 5),
                        decoration: const BoxDecoration(
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
                                  backgroundImage: NetworkImage(
                                      widget.postData.profilePicture),
                                  radius: 15,
                                ),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Wrap(
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: [
                                      Text(
                                        widget.postData.username,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '3 hr ago',
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFDBEAFE),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                              color: Colors.transparent),
                                        ),
                                        child: Text(
                                          '🎓 ${widget.postData.college}',
                                          style: TextStyle(
                                            color: Colors.blue[800],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  if (widget
                                      .postData.attachments.isNotEmpty) ...[
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            8), // corner radius
                                        border: Border.all(
                                            color: Colors.grey.shade300,
                                            width: 1), // optional border
                                      ),
                                      clipBehavior: Clip
                                          .hardEdge, // ensures image is clipped
                                      child: Image.network(
                                        widget.postData.attachments.first
                                            .attachment,
                                        fit: BoxFit.cover,
                                        width: 150,
                                        height: 150,
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null)
                                            return child;
                                          return Center(
                                            child: CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            ),
                                          );
                                        },
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(Icons.error),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                  Text(
                                    postContent,
                                    style: const TextStyle(fontSize: 16),
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    children: List.generate(
                                        widget.postData.tags.length, (index) {
                                      return Container(
                                        margin: const EdgeInsets.only(right: 5),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 2, horizontal: 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey[500]!,
                                            width: 0.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          widget.postData.tags[index],
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  const SizedBox(height: 8),
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
                                      Text(
                                        '${widget.postData.comments.length}',
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
                      ),

                      const SizedBox(height: 20),

                      // Comments Section
                      if (widget.postData.comments.isNotEmpty) ...[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Comments (${widget.postData.comments.length})',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: List.generate(
                            widget.postData.comments.length,
                            (index) {
                              return _buildComment(
                                  widget.postData.comments[index]);
                            },
                          ),
                        ),
                      ] else ...[
                        Container(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            children: [
                              Icon(
                                Icons.comment_outlined,
                                size: 48,
                                color: Colors.grey[400],
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'No comments yet',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Be the first to comment!',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 8,
          top: 8,
          left: 8,
          right: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: TextField(
          controller: _commentController,
          decoration: InputDecoration(
            hintText: 'Post a reply...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            suffixIcon: IconButton(
              icon: const Icon(Icons.send, color: Colors.blue),
              onPressed: _addComment,
            ),
          ),
          onSubmitted: (_) => _addComment(),
        ),
      ),
    );
  }
}
