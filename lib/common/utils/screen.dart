import 'package:flutter_screenutil/flutter_screenutil.dart';

// 设置宽度
double ftSetWidth(double width) {
  // dart_sdk=2.6
  // return ScreenUtil().setWidth(width);
  return width.w;
}

// 设置高度
double ftSetHeight(double height) {
  // dart_sdk=2.6
  // return ScreenUtil().setheight(height);
  return height.h;
}

// 设置字体尺寸
double ftSetFontSize(double fontSize) {
  // dart_sdk=2.6
  // return ScreenUtil().setSp(fontSize);
  return fontSize.sp;
}
