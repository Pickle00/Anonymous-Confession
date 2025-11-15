import 'package:bloc/bloc.dart';
import 'package:confesso/models/model.dart';
import 'package:confesso/models/profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_state.dart';
part 'user_profile_cubit.freezed.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(const UserProfileState.initial());

  Future<void> fetchUserProfile() async {
    final ProfileModel dummyProfile = ProfileModel(
      id: 'p1',
      userName: 'MomoLover99',
      email: 'momolover99@confessmail.com',
      totalUpvotes: 1245,
      totalConfessions: 38,
      totalComments: 92,
      createdAt: DateTime.now()
          .subtract(Duration(days: 365 * 2)), // member since 2 years
      profilePicture: 'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
      myPosts: [
        PostModel(
          id: '1',
          username: 'MomoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
          postContent:
              'Friend stole my momo stash again… plotting revenge 😈 #hostelLife',
          tags: ['#funny', '#friendship', '#foodie'],
          college: 'Kathmandu University',
          upvote: 120,
          downvote: 2,
          attachments: [],
          comments: [
            CommentModel(
              id: 'c1',
              username: 'TeaTiger',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/3595/3595455.png',
              content: 'Momo wars never end 😂',
              timeAgo: '2h',
              likes: 15,
              dislikes: 0,
              replies: [
                ReplyModel(
                  id: 'r1',
                  username: 'LazyLettuce',
                  profilePicture:
                      'https://cdn-icons-png.flaticon.com/512/616/616408.png',
                  content: 'Hide them better next time 🥷',
                  timeAgo: '1h',
                  likes: 8,
                  dislikes: 0,
                ),
              ],
            ),
          ],
          createdAt: DateTime.now().subtract(Duration(days: 10)),
        ),
        PostModel(
          id: '2',
          username: 'MomoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
          postContent:
              'Accidentally submitted handwritten doodles as final assignment 🤦‍♂️ #collegeFails',
          tags: ['#funny', '#examLife'],
          college: 'Tribhuvan University',
          upvote: 95,
          downvote: 1,
          attachments: [],
          comments: [
            CommentModel(
              id: 'c2',
              username: 'ChocoWizard',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/1998/1998645.png',
              content: 'Teacher must have laughed 😎',
              timeAgo: '3h',
              likes: 12,
              dislikes: 0,
              replies: [],
            ),
          ],
          createdAt: DateTime.now().subtract(Duration(days: 30)),
        ),
      ],
      myComments: [
        CommentModel(
          id: 'cm1',
          username: 'MomoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
          content: 'Classic panic moment 😅',
          timeAgo: '1h',
          likes: 7,
          dislikes: 0,
          replies: [
            ReplyModel(
              id: 'r2',
              username: 'CoffeePenguin',
              profilePicture:
                  'https://cdn-icons-png.flaticon.com/512/869/869636.png',
              content: 'Next time, breathe first 😂',
              timeAgo: '30m',
              likes: 5,
              dislikes: 0,
            ),
          ],
        ),
        CommentModel(
          id: 'cm2',
          username: 'MomoLover99',
          profilePicture:
              'https://cdn-icons-png.flaticon.com/512/1998/1998616.png',
          content: 'RIP my wallet 😭',
          timeAgo: '2h',
          likes: 9,
          dislikes: 0,
          replies: [],
        ),
      ],
    );
    emit(FetchedUserProfile(dummyProfile));
  }
}
