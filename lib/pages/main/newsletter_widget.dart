import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';
import 'package:flutter_news/common/widgets/widgets.dart';

Widget newsletterWidget() {
  return Container(
    margin: EdgeInsets.all(ftSetWidth(20)),
    child: Column(
      children: <Widget>[
        // newsletter
        Row(
          children: <Widget>[
            Text(
              'Newsletter',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: ftSetFontSize(18),
                fontWeight: FontWeight.w600,
                color: AppColors.thirdElement,
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.close,
                color: AppColors.thirdElementText,
                size: ftSetFontSize(17),
              ),
              onPressed: () {},
            ),
          ],
        ),

        // email
        inputEmailEdit(
          marginTop: 19,
          keyboardType: TextInputType.emailAddress,
          hintText: "Email",
          isPassword: false,
          controller: null,
        ),

        // btn subcrible
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: btnFlatButtonWidget(
            onPressed: () {},
            width: ftSetWidth(335),
            height: ftSetHeight(44),
            fontWeight: FontWeight.w600,
            title: "Subscribe",
          ),
        ),

        // disc
        Container(
          margin: EdgeInsets.only(top: ftSetHeight(29)),
          width: ftSetWidth(261),
          child: Text.rich(TextSpan(children: <TextSpan>[
            TextSpan(
              text: 'By clicking on Subscribe button you agree to accept',
              style: new TextStyle(
                color: AppColors.thirdElementText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w400,
                fontSize: ftSetFontSize(14),
              ),
            ),
            TextSpan(
              text: ' Privacy Policy',
              style: new TextStyle(
                color: AppColors.secondaryElementText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.w400,
                fontSize: ftSetFontSize(14),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  toastInfo(msg: 'Privacy Policy');
                },
            ),
          ])),
        ),
      ],
    ),
  );
}
