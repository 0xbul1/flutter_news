import 'package:flutter/material.dart';
import 'package:flutter_news/utils/utils.dart';
import 'package:flutter_news/values/values.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  // WelcomePage({Key key}) : super(key: key);
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // const WelcomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildWelcomePageHeadTitle(),
            _buildWelcomePageHeadDetail(),
            _buildWelcomePageFeatureItem(
              'feature-3',
              'Compelling photography and typography provide a beautiful reading',
              66,
            ),
            _buildWelcomePageFeatureItem(
              'feature-2',
              'Sector news never shares your personal data with advertisers or publishers',
              40,
            ),
            _buildWelcomePageFeatureItem(
              'feature-1',
              'You can get Premium to unlock hundreds of publications',
              40,
            ),
            Spacer(),
            _buildWelcomePageStartButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomePageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: ftSetHeight(60)),
      child: Text(
        'Features',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          fontSize: ftSetFontSize(24),
        ),
      ),
    );
  }

  Widget _buildWelcomePageHeadDetail() {
    return Container(
      width: ftSetWidth(242),
      height: ftSetHeight(70),
      margin: EdgeInsets.only(top: ftSetHeight(14)),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personalized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.normal,
          fontSize: ftSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  Widget _buildWelcomePageFeatureItem(
      String imageName, String intro, double marginTop) {
    return Container(
      width: ftSetWidth(295),
      height: ftSetHeight(80),
      margin: EdgeInsets.only(top: ftSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: ftSetWidth(80),
            height: ftSetHeight(80),
            child: Image.asset(
              'assets/images/$imageName.png',
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: ftSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.normal,
                fontSize: ftSetFontSize(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomePageStartButton() {
    return Container(
      width: ftSetWidth(295),
      height: ftSetHeight(44),
      margin: EdgeInsets.only(
        bottom: ftSetHeight(30),
      ),
      child: TextButton(
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
        onPressed: () {},
      ),
    );
  }
}
