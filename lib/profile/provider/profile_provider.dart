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

  Future<void> get fetchProfile async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await ref.read(profileRepositoryProvider).getProfile(),
    );
  }
}

@riverpod
ProfileRepository profileRepository(Ref ref) => ProfileRepository();
