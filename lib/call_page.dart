import 'package:flutter/material.dart';
import 'package:flutter_zego_vidcall_app/config.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String username;
  final String callId;
  const CallPage({
    super.key,
    required this.username,
    required this.callId,
  });

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Config.appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Config.appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: username.replaceAll(' ', ''),
      userName: username,
      callID: callId,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
