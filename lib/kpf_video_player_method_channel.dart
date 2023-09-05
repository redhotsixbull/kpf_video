import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'kpf_video_player_platform_interface.dart';

/// An implementation of [KpfVideoPlayerPlatform] that uses method channels.
class MethodChannelKpfVideoPlayer extends KpfVideoPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('kpf_video_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
