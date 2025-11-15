import 'package:confesso/blocs/homepage_cubit/homepage_cubit.dart';
import 'package:confesso/models/model.dart';
import 'package:confesso/router/router_path.dart';
import 'package:confesso/screens/home/post_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeFYP extends StatefulWidget {
  const HomeFYP({super.key});

  @override
  State<HomeFYP> createState() => _HomeFYPState();
}

class _HomeFYPState extends State<HomeFYP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Confesso',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              switch (value) {
                case 'Most Recent':
                  context.read<HomepageCubit>().showMostRecent();
                  break;
                case 'Most Popular':
                  context.read<HomepageCubit>().showMostPopular();
                  break;
                case 'Relevant':
                  context.read<HomepageCubit>().fetchHomePagePosts();
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Most Recent',
                child: Text('Most Recent'),
              ),
              const PopupMenuItem<String>(
                value: 'Most Popular',
                child: Text('Most Popular'),
              ),
              const PopupMenuItem<String>(
                value: 'Relevant',
                child: Text('Relevant'),
              ),
            ],
            icon: const Icon(Icons.sort), // Optional: icon for the menu
          ),
        ],
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        shadowColor: Colors.grey.shade100,
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {
          context.push(AppRoutes.createPost);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: BlocBuilder<HomepageCubit, HomepageState>(
        builder: (context, state) {
          if (state is FetchingHomePagePosts) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is FetchedHomePosts) {
            List<PostModel> postLists = state.postLists;
            return RefreshIndicator(
              backgroundColor: Colors.grey[100],
              color: Colors.blue[200],
              onRefresh: () async {
                await Future.delayed(const Duration(seconds: 2));
                if (context.mounted) {
                  context.read<HomepageCubit>().fetchHomePagePosts();
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(postLists.length, (index) {
                    return InkWell(
                      splashColor: Colors.grey.withOpacity(0.1),
                      onTap: () {
                        context.push(AppRoutes.postScreen,
                            extra: postLists[index]);
                      },
                      child: PostCard(
                        username: postLists[index].username,
                        profilePicture: postLists[index].profilePicture,
                        postContent: postLists[index].postContent,
                        tags: postLists[index].tags,
                        college: postLists[index].college,
                        likes: postLists[index].upvote,
                        comments: postLists[index].comments,
                        disLikes: postLists[index].downvote,
                        attachments: postLists[index].attachments,
                        id: postLists[index].id,
                        createdAt: postLists[index].createdAt,
                      ),
                    );
                  }),
                ),
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
