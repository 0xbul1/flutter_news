import 'package:flutter/material.dart';
import 'package:flutter_news/utils/utils.dart';
import 'package:flutter_news/values/values.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //email的控制器
  final TextEditingController _emailController = TextEditingController();
  //密码的控制器
  final TextEditingController _passController = TextEditingController();

  // logo
  Widget _buildLogo() {
    return Container(
      width: ftSetWidth(110),
      margin: EdgeInsets.only(top: ftSetWidth(40 + 44.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: ftSetHeight(76),
            width: ftSetWidth(76),
            margin: EdgeInsets.symmetric(horizontal: ftSetWidth(15)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: ftSetWidth(76),
                    decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [Shadows.primaryShadow],
                        borderRadius: BorderRadius.all(
                          Radius.circular(ftSetWidth(76 * 0.5)),
                        )),
                    child: Container(),
                  ),
                ),
                Positioned(
                  top: ftSetWidth(13),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: ftSetHeight(15)),
            child: Text(
              'SECTOR',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: 'Monserrat',
                fontWeight: FontWeight.w600,
                fontSize: ftSetFontSize(24),
                height: 1,
              ),
            ),
          ),
          Text(
            'news',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              fontSize: ftSetFontSize(16),
              height: 1,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text('SignInPage');
  }
}
