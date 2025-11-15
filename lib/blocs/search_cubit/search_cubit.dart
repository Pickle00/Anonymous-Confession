import 'package:confesso/data/post_data.dart';
import 'package:confesso/models/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());
  List<PostModel> postData = createDummyPosts();

  void searchKeyword(String keyword) {
    final key = keyword.toLowerCase().trim();
    if (key.isEmpty) {
      emit(const SearchResults([]));
      return;
    }

    // Binary Search
    postData.sort((a, b) =>
        a.postContent.toLowerCase().compareTo(b.postContent.toLowerCase()));

    List<PostModel> searchResults = [];
    int left = 0;
    int right = postData.length - 1;

    while (left <= right) {
      int mid = (left + right) ~/ 2;
      final post = postData[mid];

      final content = post.postContent.toLowerCase();
      final username = post.username.toLowerCase();
      final tags = post.tags.map((e) => e.toLowerCase()).toList();
      final college = post.college.toLowerCase();

      if (content.startsWith(key) ||
          username.startsWith(key) ||
          tags.any((tag) => tag.startsWith(key)) ||
          college.startsWith(key)) {
        int i = mid;
        while (i >= 0 &&
            (postData[i].postContent.toLowerCase().startsWith(key) ||
                postData[i].username.toLowerCase().startsWith(key) ||
                postData[i]
                    .tags
                    .any((tag) => tag.toLowerCase().startsWith(key)) ||
                postData[i].college.toLowerCase().startsWith(key))) {
          searchResults.add(postData[i]);
          i--;
        }

        i = mid + 1;
        while (i < postData.length &&
            (postData[i].postContent.toLowerCase().startsWith(key) ||
                postData[i].username.toLowerCase().startsWith(key) ||
                postData[i]
                    .tags
                    .any((tag) => tag.toLowerCase().startsWith(key)) ||
                postData[i].college.toLowerCase().startsWith(key))) {
          searchResults.add(postData[i]);
          i++;
        }
        left = mid + 1;
        continue;
      } else if (content.compareTo(key) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    if (searchResults.isEmpty) {
      searchResults = postData.where((post) {
        final content = post.postContent.toLowerCase();
        final username = post.username.toLowerCase();
        final tags = post.tags.map((e) => e.toLowerCase()).toList();
        final college = post.college.toLowerCase();
        return content.contains(key) ||
            username.contains(key) ||
            tags.any((tag) => tag.contains(key)) ||
            college.contains(key);
      }).toList();
    }

    emit(SearchResults(searchResults));
  }
}
