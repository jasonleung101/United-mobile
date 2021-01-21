import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static const darkGrey = const Color(0xff363636);
  static const navBarDarkGrey = const Color(0xFF272727);
  static const white = const Color(0xffffffff);
  static const white_50 = const Color(0x80ffffff);

  static ThemeData primary = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppTheme.darkGrey,
      primaryColor: AppTheme.white,
      accentColor: AppTheme.darkGrey,
      backgroundColor: AppTheme.darkGrey,
      textTheme: _textTheme,
      inputDecorationTheme: _inputDecoration,
      buttonTheme: _buttonTheme);
}

ButtonThemeData _buttonTheme = ButtonThemeData(
  buttonColor: AppTheme.white,
  height: 120.h,
  minWidth: 200,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24.0),
  ),
);

InputDecorationTheme _inputDecoration = InputDecorationTheme(
  contentPadding: EdgeInsets.all(10),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppTheme.white,
      width: 1.5,
    ),
    borderRadius: BorderRadius.all(Radius.circular(14.5)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppTheme.white,
      width: 1.5,
    ),
    borderRadius: BorderRadius.all(Radius.circular(14.5)),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppTheme.white,
      width: 1.5,
    ),
    borderRadius: BorderRadius.all(Radius.circular(14.5)),
  ),
);

TextTheme _textTheme = ThemeData.light().textTheme.copyWith(
      headline1: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w400,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 35.0,
      ),
      headline2: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w900,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 30.0,
      ),
      headline3: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w500,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 24.0,
      ),
      headline4: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w500,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 18.0,
      ),
      headline5: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w500,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 16.0,
      ),
      headline6: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w900,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 20.0,
      ),
      subtitle1: TextStyle(
        color: AppTheme.white_50,
        fontWeight: FontWeight.w500,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 15.0,
      ),
      subtitle2: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w800,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 15.0,
      ),
      bodyText1: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w400,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 14.0,
      ),
      bodyText2: TextStyle(
        color: AppTheme.white,
        fontWeight: FontWeight.w800,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: ScreenUtil().setSp(42, allowFontScalingSelf: false),
      ),
      caption: TextStyle(
        color: AppTheme.white_50,
        fontWeight: FontWeight.w600,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: 11.0,
      ),
      button: TextStyle(
        color: AppTheme.darkGrey,
        fontWeight: FontWeight.w600,
        fontFamilyFallback: ['Avenir', 'NotoSansTC'],
        fontStyle: FontStyle.normal,
        fontSize: ScreenUtil().setSp(54, allowFontScalingSelf: false),
      ),
    );
