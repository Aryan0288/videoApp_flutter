import 'package:flutter/material.dart';
import 'package:videoappdo/components/current_user.dart';
import 'package:videoappdo/components/routes.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {

    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, String>{}) as Map<String, String>;
    final callID= arguments[PageParam.coll_id] ?? '';

    return SafeArea(child:ZegoUIKitPrebuiltCall(
        appID: 1173816886,
        appSign: 'ece93372852ee7616b8c220083df75dc62ce45f91aa42f891a02cda18ea8a500',
        callID: callID,
        userID: currentUser.id,
        userName: currentUser.name,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
    ));
  }
}
