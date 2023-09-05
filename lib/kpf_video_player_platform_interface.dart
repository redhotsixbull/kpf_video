import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'kpf_video_player_method_channel.dart';

abstract class KpfVideoPlayerPlatform extends PlatformInterface {
  /// Constructs a KpfVideoPlayerPlatform.
  KpfVideoPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static KpfVideoPlayerPlatform _instance = MethodChannelKpfVideoPlayer();

  /// The default instance of [KpfVideoPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelKpfVideoPlayer].
  static KpfVideoPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [KpfVideoPlayerPlatform] when
  /// they register themselves.
  static set instance(KpfVideoPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
