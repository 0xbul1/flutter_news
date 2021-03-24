import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_news/routes.dart';
import 'package:flutter_news/pages/welcome/welcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Material App',
    //   home: WelcomePage(),
    //   debugShowCheckedModeBanner: false,
    // );
    // 填入设计稿中设备的屏幕尺寸,单位dp
    return ScreenUtilInit(
      designSize: Size(375, 734),
      allowFontScaling: false,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: WelcomePage(),
        routes: staticRoutes,
      ),
    );
  }
}

// class ContentWidget extends StatelessWidget {
//   // const ContentWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       child: SafeArea(
//         left: true,
//         top: true,
//         right: true,
//         bottom: true,
//         // minimum: const EdgeInsets.all(16),
//         child: WelcomePage(),
//       ),
//     );
//   }
// }
