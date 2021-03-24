import 'package:flutter/material.dart';
import 'package:flutter_news/utils/utils.dart';
import 'package:flutter_news/values/values.dart';

/// 扁平圆角按钮
Widget btnFlatButtonWidget({
  @required VoidCallback onPressed,
  double width = 140,
  double height = 44,
  Color gbColor = AppColors.primaryElement,
  String title = "button",
  Color fontColor = AppColors.primaryElementText,
  double fontSize = 18,
  String fontName = "Montserrat",
  FontWeight fontWeight = FontWeight.w400,
}) {
  return Container(
    width: ftSetWidth(width),
    height: ftSetHeight(height),
    child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: fontColor,
        backgroundColor: gbColor,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontName,
          fontWeight: fontWeight,
          fontSize: ftSetFontSize(fontSize),
          height: 1,
        ),
      ),
    ),
    // child: FlatButton(
    //   onPressed: onPressed,
    //   color: gbColor,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: Radii.k6pxRadius,
    //   ),
    //   child: Text(
    //     title,
    //     textAlign: TextAlign.center,
    //     style: TextStyle(
    //       color: fontColor,
    //       fontFamily: fontName,
    //       fontWeight: fontWeight,
    //       fontSize: duSetFontSize(fontSize),
    //       height: 1,
    //     ),
    //   ),
    // ),
  );
}

/// 第三方按钮
Widget btnFlatButtonBorderOnlyWidget({
  @required VoidCallback onPressed,
  double width = 88,
  double height = 44,
  String iconFileName,
}) {
  return Container(
    width: ftSetWidth(width),
    height: ftSetHeight(height),
    // child: FlatButton(
    //   onPressed: onPressed,
    //   shape: RoundedRectangleBorder(
    //     side: Borders.primaryBorder,
    //     borderRadius: Radii.k6pxRadius,
    //   ),
    //   child: Image.asset(
    //     "assets/images/icons-$iconFileName.png",
    //   ),
    // ),
    child: TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
        side: Borders.primaryBorder,
        borderRadius: Radii.k6pxRadius,
      )),
      child: Image.asset('assets/images/icons-$iconFileName.png'),
      onPressed: onPressed,
    ),
  );
}
