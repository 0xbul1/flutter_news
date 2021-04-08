import 'package:flutter/material.dart';
import 'package:flutter_news/utils/utils.dart';
import 'package:flutter_news/values/values.dart';
import 'package:flutter_news/widgets/widgets.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // fullName email password 的控制器
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  // logo
  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: ftSetHeight(50)),
      child: Text(
        "Sign up",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: ftSetFontSize(24),
          height: 1,
        ),
      ),
    );
  }

  // 注册表单
  Widget _buildInputForm() {
    return Container(
      width: ftSetWidth(295),
      // height: 204,
      margin: EdgeInsets.only(top: ftSetHeight(49)),
      child: Column(
        children: [
          // fullName input
          inputTextEdit(
            controller: _fullnameController,
            keyboardType: TextInputType.text,
            hintText: "Full name",
            marginTop: 0,
          ),
          // email input
          inputTextEdit(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
          ),
          // password input
          inputTextEdit(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Password",
            isPassword: true,
          ),

          // 创建
          Container(
            height: ftSetHeight(44),
            margin: EdgeInsets.only(top: ftSetHeight(15)),
            child: btnFlatButtonWidget(
              onPressed: () {
                if (!ftCheckStringLength(_fullnameController.value.text, 5)) {
                  toastInfo(msg: '用户名不能小于5位');
                  return;
                }
                if (!ftIsEmail(_emailController.value.text)) {
                  toastInfo(msg: '请正确输入邮件');
                  return;
                }
                if (!ftCheckStringLength(_passController.value.text, 6)) {
                  toastInfo(msg: '密码不能小于6位');
                  return;
                }
                Navigator.pop(context);
              },
              width: 295,
              fontWeight: FontWeight.w600,
              title: "Create an account",
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
                "By signing up you agree to our",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: ftSetFontSize(16),
                  height: 1, // 设置下行高，否则字体下沉
                ),
              ),
            ),
          ),
          Container(
            height: ftSetHeight(22),
            // margin: EdgeInsets.only(top: ftSetHeight(20)),
            child: FlatButton(
              onPressed: () => {},
              child: Text(
                "Terms and Conditions of Use",
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

  // 第三方
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

  // 有账号
  Widget _buildHaveAccountButton() {
    return Container(
      margin: EdgeInsets.only(bottom: ftSetHeight(20)),
      child: btnFlatButtonWidget(
        onPressed: () {
          Navigator.pop(context);
        },
        width: 294,
        gbColor: AppColors.secondaryElement,
        fontColor: AppColors.primaryText,
        title: "I have an account",
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: transparentAppBar(context: context, actions: [
        IconButton(
          icon: Icon(Icons.info_outline, color: AppColors.primaryText),
          onPressed: () {
            toastInfo(msg: '注册页面');
          },
        ),
      ]),
      body: Center(
        child: Column(
          children: [
            Divider(
              height: 1,
            ),
            _buildLogo(),
            _buildInputForm(),
            Spacer(),
            _buildThirdPartyLogin(),
            _buildHaveAccountButton()
          ],
        ),
      ),
    );
  }
}
