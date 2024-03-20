import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AudioVideoCall(),
    );
  }
}

class AudioVideoCall extends StatelessWidget {
  AudioVideoCall({super.key});

  final String userID = Random().nextInt(1000).toString();

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
        appID: 676521339,
        appSign:
            "336c55d66acd9148e6569643d7d4bb39ab1da80e5c282412aaa3aa578f35f118",
        callID: "id_123",
        userID: "user_$userID",
        userName: "user_$userID",
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall());
  }
}
