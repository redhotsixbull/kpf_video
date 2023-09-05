
import 'kpf_video_player_platform_interface.dart';

class KpfVideoPlayer {
  Future<String?> getPlatformVersion() {
    return KpfVideoPlayerPlatform.instance.getPlatformVersion();
  }
}
