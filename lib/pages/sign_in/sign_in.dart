import 'package:flutter/material.dart';
import 'package:flutter_news/common/apis/apis.dart';
import 'package:flutter_news/common/entities/entities.dart';
// import 'package:flutter_news/common/apis/apis.dart';
// import 'package:flutter_news/common/entities/entities.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';
import 'package:flutter_news/global.dart';
// import 'package:flutter_news/global.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //email的控制器
  final TextEditingController _emailController = TextEditingController();
  // 密码的控制器
  final TextEditingController _passController = TextEditingController();

  // 跳转 注册界面
  _handleNavSignUp() {
    Navigator.pushNamed(
      context,
      "/sign_up",
    );
  }

  // 执行登录操作
  _handleSignIn() async {
    if (!ftIsEmail(_emailController.value.text)) {
      toastInfo(msg: '请正确输入邮件');
      return;
    }
    if (!ftCheckStringLength(_passController.value.text, 6)) {
      toastInfo(msg: '密码不能小于6位');
      return;
    }

    // UserRequestEntity params = UserRequestEntity(
    //   email: _emailController.value.text,
    //   password: ftSHA256(_passController.value.text),
    // );

    // UserResponseEntity res = await UserAPI.login(params: params);
    // print(Global.profile);
    //
    UserLoginRequestEntity params = UserLoginRequestEntity(
      email: _emailController.value.text,
      password: ftSHA256(_passController.value.text),
    );

    UserLoginResponseEntity userProfile = await UserAPI.login(
      context: context,
      params: params,
    );
    Global.saveProfile(userProfile);

    Navigator.pushNamed(
      context,
      "/app",
    );
    // 写本地 access_token , 不写全局，业务：离线登录
    // 全局数据 gUser
  }

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
                  onPressed: () => _handleNavSignUp(),
                  // onPressed: _handleNavSignUp,
                  gbColor: AppColors.thirdElement,
                  title: "Sign up",
                ),
                Spacer(),
                // 登录
                btnFlatButtonWidget(
                  onPressed: () => _handleSignIn(),
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

  // 第三方登录
  Widget _buildThirdPartyLogin() {
    return Container(
      width: ftSetWidth(295),
      margin: EdgeInsets.only(bottom: ftSetHeight(40)),
      child: Column(
        children: <Widget>[
          // title
          Text(
            "Or sign in with social networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: ftSetFontSize(16),
            ),
          ),
          // 按钮
          Padding(
            padding: EdgeInsets.only(top: ftSetHeight(20)),
            child: Row(
              children: <Widget>[
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "twitter",
                ),
                Spacer(),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "google",
                ),
                Spacer(),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 88,
                  iconFileName: "facebook",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 注册按钮
  Widget _buildSignupButton() {
    return Container(
      margin: EdgeInsets.only(bottom: ftSetHeight(20)),
      child: btnFlatButtonWidget(
        onPressed: _handleNavSignUp,
        width: 294,
        gbColor: AppColors.secondaryElement,
        fontColor: AppColors.primaryText,
        title: "Sign up",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildInputForm(),
            Spacer(),
            _buildThirdPartyLogin(),
            _buildSignupButton(),
          ],
        ),
      ),
    );
  }
}
