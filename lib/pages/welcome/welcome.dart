import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(60)),
      child: Text(
        'Features',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
        ),
      ),
    );
  }

  // 页头说明
  Widget _buildPageHeadDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  // 特性说明
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              'assets/images/$imageName.png',
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(intro,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.normal,
                  fontSize: duSetFontSize(16),
                )),
          )
        ],
      ),
    );
  }

  // 开始按钮
  Widget _buildStartButton() {
    return Container(
        width: duSetWidth(295),
        height: duSetHeight(44),
        margin: EdgeInsets.only(bottom: duSetHeight(20)),
        child: TextButton(
          // style: TextButton.styleFrom(
          //   foregroundColor:
          //       MaterialStateProperty.all(AppColors.primaryElementText),
          //   backgroundColor: MaterialStateProperty.all(AppColors.primaryElement),
          //   // shape:
          //   //     MaterialStateProperty.all((BorderRadius) => {Radii.k6pxRadius}),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: Radii.k6pxRadius,
          //   ),
          // ),
          // style: ButtonStyle(
          //   foregroundColor:
          //       MaterialStateProperty.all(AppColors.primaryElementText),
          //   backgroundColor:
          //       MaterialStateProperty.all(AppColors.primaryElement),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(4)),
          //   ),
          // ),
          style: TextButton.styleFrom(
              primary: AppColors.primaryElementText,
              backgroundColor: AppColors.primaryElement,
              // shape: const BeveledRectangleBorder(
              //     borderRadius: BorderRadius.all(
              //   Radius.circular(5),
              // )),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(20),
              //   ),
              // )),
              // https://www.woolha.com/tutorials/flutter-using-textbutton-widget-examples
              shape: RoundedRectangleBorder(
                borderRadius: Radii.k6pxRadius,
              )),
          child: Text('Get Started'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/sign-in',
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    // print(Global.profile.displayName);
    ScreenUtil.init(
      // 设备像素大小(必须在首页中获取)
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      // 设计尺寸
      designSize: Size(375, 734),
      allowFontScaling: true,
    );
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: <Widget>[
            _buildPageHeadTitle(),
            _buildPageHeadDetail(),
            _buildFeatureItem(
              'feature-3',
              'Compelling photography and typography provide a beautiful reading',
              86,
            ),
            _buildFeatureItem(
              'feature-2',
              'Sector news never shares your personal data with advertisers or publishers',
              40,
            ),
            _buildFeatureItem(
              'feature-1',
              'You can get Premium to unlock hundreds of publications',
              40,
            ),
            Spacer(),
            _buildStartButton(),
          ],
        )),
      ),
    );
  }
}
