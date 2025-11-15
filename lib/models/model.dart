class PostModel {
  final String id;
  final String username;
  final String profilePicture;
  final String postContent;
  final List<String> tags;
  final String college;
  final int upvote;
  final int downvote;
  final List<Attachment> attachments;
  final List<CommentModel> comments;
  final DateTime createdAt;

  PostModel({
    required this.id,
    required this.username,
    required this.profilePicture,
    required this.postContent,
    required this.tags,
    required this.college,
    required this.upvote,
    required this.downvote,
    List<Attachment>? attachments,
    List<CommentModel>? comments,
    required this.createdAt,
  })  : attachments = attachments ?? [],
        comments = comments ?? [];
}

class Attachment {
  final String attachment;

  const Attachment({required this.attachment});
}

class ReplyModel {
  final String id;
  final String username;
  final String profilePicture;
  final String? college;
  final String content;
  final String timeAgo;
  final int likes;
  final int dislikes;

  ReplyModel({
    required this.id,
    required this.username,
    required this.profilePicture,
    this.college,
    required this.content,
    required this.timeAgo,
    required this.likes,
    required this.dislikes,
  });
}

class CommentModel {
  final String id;
  final String username;
  final String profilePicture;
  final String? college;
  final String content;
  final String timeAgo;
  final int likes;
  final int dislikes;
  final List<ReplyModel> replies;

  CommentModel({
    required this.id,
    required this.username,
    required this.profilePicture,
    this.college,
    required this.content,
    required this.timeAgo,
    required this.likes,
    required this.dislikes,
    required this.replies,
  });
}
