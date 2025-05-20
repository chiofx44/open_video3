import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'constants/app_info.dart';

class CallPage extends StatelessWidget {
  final String callID;

  CallPage({Key? key, required this.callID}) : super(key: key);

  final int user_id = Random().nextInt(9999);

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppInfo.AppID,
      appSign: AppInfo.AppSign,
      userID: user_id.toString(),
      userName: 'user_name $user_id',
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
