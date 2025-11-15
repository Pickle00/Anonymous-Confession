part of 'homepage_cubit.dart';

@freezed
class HomepageState with _$HomepageState {
  const factory HomepageState.initial() = Initial;
  const factory HomepageState.fetchedHomePagePosts(List<PostModel> postLists) = FetchedHomePosts;
  const factory HomepageState.fetchingHomePagePosts() = FetchingHomePagePosts;
}
