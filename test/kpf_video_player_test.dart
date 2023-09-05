import 'package:flutter_test/flutter_test.dart';
import 'package:kpf_video_player/kpf_video_player.dart';
import 'package:kpf_video_player/kpf_video_player_platform_interface.dart';
import 'package:kpf_video_player/kpf_video_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockKpfVideoPlayerPlatform
    with MockPlatformInterfaceMixin
    implements KpfVideoPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final KpfVideoPlayerPlatform initialPlatform = KpfVideoPlayerPlatform.instance;

  test('$MethodChannelKpfVideoPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelKpfVideoPlayer>());
  });

  test('getPlatformVersion', () async {
    KpfVideoPlayer kpfVideoPlayerPlugin = KpfVideoPlayer();
    MockKpfVideoPlayerPlatform fakePlatform = MockKpfVideoPlayerPlatform();
    KpfVideoPlayerPlatform.instance = fakePlatform;

    expect(await kpfVideoPlayerPlugin.getPlatformVersion(), '42');
  });
}
