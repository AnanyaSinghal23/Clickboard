// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noticeFutureHash() => r'83456745d21e0c911e440cea4c50a9783181ee5e';

/// See also [noticeFuture].
@ProviderFor(noticeFuture)
final noticeFutureProvider = AutoDisposeFutureProvider<void>.internal(
  noticeFuture,
  name: r'noticeFutureProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$noticeFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef NoticeFutureRef = AutoDisposeFutureProviderRef<void>;
String _$noticeControllerHash() => r'2c690d1ca8c18783cc25ecfea4d18ce0be0566eb';

/// See also [NoticeController].
@ProviderFor(NoticeController)
final noticeControllerProvider =
    NotifierProvider<NoticeController, List<Notice>>.internal(
  NoticeController.new,
  name: r'noticeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$noticeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NoticeController = Notifier<List<Notice>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
