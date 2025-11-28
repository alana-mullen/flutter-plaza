// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_image_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DownloadImage)
const downloadImageProvider = DownloadImageProvider._();

final class DownloadImageProvider
    extends $AsyncNotifierProvider<DownloadImage, String?> {
  const DownloadImageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'downloadImageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$downloadImageHash();

  @$internal
  @override
  DownloadImage create() => DownloadImage();
}

String _$downloadImageHash() => r'8f81c09961614a462a9457cd5bbe02a692716a26';

abstract class _$DownloadImage extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
