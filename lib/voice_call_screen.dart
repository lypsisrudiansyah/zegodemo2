// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zegodemo2/const.dart';

class VoiceCallScreen extends ConsumerStatefulWidget {
  final bool isGroupChat;
  const VoiceCallScreen({
    super.key,
    required this.isGroupChat,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VoiceCallScreenState();
}

class _VoiceCallScreenState extends ConsumerState<VoiceCallScreen> {
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
      config: ZegoUIKitPrebuiltCallConfig.groupVoiceCall(),
    );
  }
}
