import 'package:flutter/material.dart';
import 'package:kpf_video_player/kpf_video_reals.dart';
import 'package:kpf_video_player_example/test_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController pageController;
  List<Widget> realsWidget = [];
  @override
  void initState() {
    super.initState();
    pageController = PageController(keepPage: true);
    realsWidget.add(TestController());
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/17/M20/84113fadffb634e7f403efaa81c5baa6.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
    realsWidget.add(Padding(
      padding: const EdgeInsets.all(50.0),
      child: KPFVideoReals(
        url:
            "https://resources.mora.kr/static/mort/exercise/media/19/M20/2c7fa2c96c829b6f2d9a25ea4ee7d20c.mp4",
        isPlaying: false,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: pageController,
          children: realsWidget,
        ),
      ),
    );
  }
}
