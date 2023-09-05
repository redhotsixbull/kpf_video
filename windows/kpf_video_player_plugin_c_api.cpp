#include "include/kpf_video_player/kpf_video_player_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "kpf_video_player_plugin.h"

void KpfVideoPlayerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  kpf_video_player::KpfVideoPlayerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
