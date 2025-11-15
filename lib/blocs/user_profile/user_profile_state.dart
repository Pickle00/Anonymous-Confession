part of 'user_profile_cubit.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = Initial;
  const factory UserProfileState.fetchedUserProfile(ProfileModel userProfile) = FetchedUserProfile;
}
