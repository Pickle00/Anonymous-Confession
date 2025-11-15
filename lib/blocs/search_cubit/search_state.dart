part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;

  const factory SearchState.searchResults(List<PostModel> searchResults) = SearchResults;
}
