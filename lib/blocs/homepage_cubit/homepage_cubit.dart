import 'dart:math';

import 'package:confesso/data/post_data.dart';
import 'package:confesso/models/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_state.dart';
part 'homepage_cubit.freezed.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit() : super(const HomepageState.initial());
  List<PostModel> postLists = [];
  Future<void> fetchHomePagePosts() async {
    emit(const FetchingHomePagePosts());

    await Future.delayed(const Duration(seconds: 2));
    postLists = createDummyPosts();
    postLists.shuffle(Random());

    emit(FetchedHomePosts(postLists));
  }

  void upVote(String postId) {
    postLists = postLists.map((post) {
      if (post.id == postId) {
        return PostModel(
          id: post.id,
          username: post.username,
          profilePicture: post.profilePicture,
          postContent: post.postContent,
          tags: post.tags,
          college: post.college,
          upvote: post.upvote + 1,
          downvote: post.downvote,
          attachments: post.attachments,
          comments: post.comments,
          createdAt: post.createdAt,
        );
      }
      return post;
    }).toList();

    emit(FetchedHomePosts(postLists));
  }

  void downVote(String postId) {
    postLists = postLists.map((post) {
      if (post.id == postId) {
        return PostModel(
          id: post.id,
          username: post.username,
          profilePicture: post.profilePicture,
          postContent: post.postContent,
          tags: post.tags,
          college: post.college,
          upvote: post.upvote,
          downvote: post.downvote + 1,
          attachments: post.attachments,
          comments: post.comments,
          createdAt: post.createdAt,
        );
      }
      return post;
    }).toList();

    emit(FetchedHomePosts(postLists));
  }

  void showMostRecent() async {
    emit(const FetchingHomePagePosts());

    await Future.delayed(const Duration(seconds: 2));

    // Merge Sort
    postLists = _mergeSort(postLists);

    emit(FetchedHomePosts(postLists));
  }

  List<PostModel> _mergeSort(List<PostModel> list) {
    if (list.length <= 1) return list;

    int mid = list.length ~/ 2;
    List<PostModel> left = _mergeSort(list.sublist(0, mid));
    List<PostModel> right = _mergeSort(list.sublist(mid));

    return _merge(left, right);
  }

  List<PostModel> _merge(List<PostModel> left, List<PostModel> right) {
    List<PostModel> result = [];
    int i = 0;
    int j = 0;

    while (i < left.length && j < right.length) {
      if (left[i].createdAt.isAfter(right[j].createdAt)) {
        result.add(left[i]);
        i++;
      } else {
        result.add(right[j]);
        j++;
      }
    }

    while (i < left.length) {
      result.add(left[i]);
      i++;
    }
    while (j < right.length) {
      result.add(right[j]);
      j++;
    }

    return result;
  }

  void showMostPopular() async {
    emit(const FetchingHomePagePosts());

    // Bubble Sort

    await Future.delayed(const Duration(seconds: 2));
    for (int i = 0; i < postLists.length - 1; i++) {
      for (int j = 0; j < postLists.length - i - 1; j++) {
        if (postLists[j].upvote < postLists[j + 1].upvote) {
          final temp = postLists[j];
          postLists[j] = postLists[j + 1];
          postLists[j + 1] = temp;
        }
      }
    }
    emit(FetchedHomePosts(postLists));
  }
}
