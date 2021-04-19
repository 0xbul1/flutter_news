import 'package:flutter/material.dart';
import 'package:flutter_news/common/provider/provider.dart';
import 'package:flutter_news/pages/index/index.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_news/global.dart';
import 'package:flutter_news/routes.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_news/pages/welcome/welcomePage.dart';

// void main() => Global.init().then((e) => runApp(MyApp()));
/// provider方式一：先创建数据对象，再挂载
// void main() => Global.init().then((e) => runApp(
//       MultiProvider(
//         providers: [
//           ChangeNotifierProvider<AppState>.value(
//             value: Global.appState,
//           ),
//         ],
//         child: Consumer<AppState>(builder: (context, appState, _) {
//           if (appState.isGrayFilter) {
//             return ColorFiltered(
//               colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
//               child: MyApp(),
//             );
//           } else {
//             return MyApp();
//           }
//         }),
//       ),
//     ));

/// provider方式二：先创建数据对象，再挂载
void main() => Global.init().then((e) => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<AppState>(
            create: (_) => new AppState(),
          ),
        ],
        child: Consumer<AppState>(builder: (context, appState, _) {
          if (appState.isGrayFilter) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
              child: MyApp(),
            );
          } else {
            return MyApp();
          }
        }),
      ),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Material App',
    //   home: WelcomePage(),
    //   debugShowCheckedModeBanner: false,
    // );
    // 填入设计稿中设备的屏幕尺寸,单位dp
    // return ScreenUtilInit(
    //   designSize: Size(375, 734),
    //   allowFontScaling: false,
    //   builder: () => MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Material App',
    //     home: WelcomePage(),
    //     routes: staticRoutes,
    //   ),
    // );
    //
    return MaterialApp(
      title: 'Material App',
      home: IndexPage(),
      routes: staticRoutes,
      debugShowCheckedModeBanner: false,
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
