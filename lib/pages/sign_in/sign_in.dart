import 'package:flutter/material.dart';
import 'package:flutter_news/utils/utils.dart';
import 'package:flutter_news/values/values.dart';
import 'package:flutter_news/widgets/widgets.dart';

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
      width: ftSetWidth(106),
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

  // 登录表单
  Widget _buildInputForm() {
    return Container(
      width: ftSetWidth(295),
      // height: 204,
      margin: EdgeInsets.only(top: ftSetHeight(49)),
      child: Column(
        children: [
          // email input
          inputTextEdit(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
            marginTop: 0,
          ),
          // password input
          inputTextEdit(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Password",
            isPassword: true,
          ),

          // 注册、登录 横向布局
          Container(
            height: ftSetHeight(44),
            margin: EdgeInsets.only(top: ftSetHeight(15)),
            child: Row(
              children: [
                // 注册
                btnFlatButtonWidget(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/sign-up",
                    );
                  },
                  gbColor: AppColors.thirdElement,
                  title: "Sign up",
                ),
                Spacer(),
                // 登录
                btnFlatButtonWidget(
                  onPressed: () {
                    if (!ftIsEmail(_emailController.value.text)) {
                      toastInfo(msg: '请正确输入邮件');
                      return;
                    }
                    if (!ftCheckStringLength(_passController.value.text, 6)) {
                      toastInfo(msg: '密码不能小于6位');
                      return;
                    }
                  },
                  gbColor: AppColors.primaryElement,
                  title: "Sign in",
                ),
              ],
            ),
          ),
          // Spacer(),

          // Fogot password
          Container(
            height: ftSetHeight(22),
            margin: EdgeInsets.only(top: ftSetHeight(20)),
            child: FlatButton(
              onPressed: () => {},
              child: Text(
                "Fogot password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.secondaryElementText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: ftSetFontSize(16),
                  height: 1, // 设置下行高，否则字体下沉
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildInputForm(),
          ],
        ),
      ),
    );
  }
}
