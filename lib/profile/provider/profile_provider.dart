import 'package:plaza/profile/model/user_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/profile_repository.dart';

part 'profile_provider.g.dart';

@riverpod
class Profile extends _$Profile {
  @override
  Future<UserResponse?> build() async {
    fetchProfile;

    return null;
  }

  get fetchProfile async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return Future.value(
        await ProfileRepository.getProfile(),
      );
    });
  }
}
