import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:video_player/video_player.dart';

class KPFVideoReals extends StatefulWidget {
  const KPFVideoReals({super.key, required this.url, required this.isPlaying});

  final String url;
  final bool isPlaying;
  @override
  State<KPFVideoReals> createState() => _KPFVideoRealsState();
}

class _KPFVideoRealsState extends State<KPFVideoReals> {
  VideoPlayerController? _controller;
  DefaultCacheManager defaultCacheManager = DefaultCacheManager();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.endOfFrame.then((value) async {
      await saveVideoFiveSecond();
      File temp = await defaultCacheManager.getSingleFile(widget.url);
      _controller = VideoPlayerController.file(temp);
      await _controller!.initialize();
      await _controller!.play();
      setState(() {});
    });
  }

  @override
  void dispose() async {
    super.dispose();
    if (_controller != null) {
      print("dispose!!!!!");
      await _controller!.pause();
      await _controller!.dispose();
      _controller = null;
    }
  }

  saveVideoFiveSecond() async {
    var file = await defaultCacheManager.downloadFile(widget.url);
    print(file.file.dirname);
    print(file.file.basename);
    print("file path ");
    FFmpegKit.execute(
            '-i ${file.file.dirname + file.file.basename} -c:v mpeg4 file2.mp4')
        .then((session) async {
      final returnCode = await session.getReturnCode();
      if (ReturnCode.isSuccess(returnCode)) {
        print("success yeah!!!!!!!");
        // SUCCESS
      } else if (ReturnCode.isCancel(returnCode)) {
        print("cancel!");
        // CANCEL
      } else {
        print("error");
        // ERROR
      }
    });
  }

  videoSplit() async {
    var file = await DefaultCacheManager().downloadFile(widget.url);

    String outputStartVideoPath = 'path/to/output/start_video.mp4';
    String outputEndVideoPath = 'path/to/output/end_video.mp4';

    final String command1 =
        '-i ${file.file.path} -t 30 -c:v copy $outputStartVideoPath';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _controller == null
            ? Center(child: CircularProgressIndicator())
            : VideoPlayer(_controller!),
      ),
    );
  }
}
