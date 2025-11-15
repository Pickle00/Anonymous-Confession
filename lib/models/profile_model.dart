import 'package:confesso/models/model.dart';

class ProfileModel {
  final String id;
  final String userName;
  final String email;
  final int totalUpvotes;
  final int totalConfessions;
  final int totalComments;
  final DateTime createdAt;
  final String profilePicture;
  final List<PostModel> myPosts;
  final List<CommentModel> myComments;

  ProfileModel({
    required this.id,
    required this.userName,
    required this.email,
    required this.totalUpvotes,
    required this.totalConfessions,
    required this.totalComments,
    required this.createdAt,
    required this.profilePicture,
    List<PostModel>? myPosts,
    List<CommentModel>? myComments,
  })  : myPosts = myPosts ?? [],
        myComments = myComments ?? [];
}
