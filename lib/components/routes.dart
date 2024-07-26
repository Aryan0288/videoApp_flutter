import 'package:flutter/cupertino.dart';
import 'package:videoappdo/components/call_page.dart';
import 'package:videoappdo/components/home_page.dart';
import 'package:videoappdo/components/login_page.dart';

class PageRouteNames{
  static const login='/login';
  static const home='/home_page';
  static const call='/call';
}
class PageParam{
  static String localUserID='local_user_id';
  static String coll_id='call_id';
}


Map<String, WidgetBuilder> routes={
  PageRouteNames.login: (context)=>const LoginPage(),
  PageRouteNames.home:(context)=>const HomePage(),
  PageRouteNames.call:(context)=>const CallPage()
};