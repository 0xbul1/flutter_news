import 'package:flutter/material.dart';
import 'package:flutter_news/pages/welcomePage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      allowFontScaling: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: WelcomePage(),
      ),
    );
  }
}
