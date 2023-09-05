import 'package:flutter/material.dart';
import 'package:kpf_video_player/cache_util.dart';

class TestController extends StatefulWidget {
  const TestController({super.key});

  @override
  State<TestController> createState() => _TestControllerState();
}

class _TestControllerState extends State<TestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  print("clear!!");
                  clearCache();
                },
                child: Text("clear cache")),
            OutlinedButton(onPressed: () {}, child: Text("download video")),
            OutlinedButton(onPressed: () {}, child: Text("add video")),
          ],
        ),
      ),
    );
  }
}
