// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zegodemo2/const.dart';

class VideoCallScreen extends ConsumerStatefulWidget {
  final bool isGroupChat;
  const VideoCallScreen({
    super.key,
    required this.isGroupChat,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends ConsumerState<VideoCallScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override

  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: zgAppId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: zgAppSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: "002993434",
      userName: "Walu",
      callID: "229929394234",
      // config: ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall(),
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
