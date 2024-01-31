import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

dynamic lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: tdWhiteO,
    onPrimary: tdWhiteO,
    secondary: tdBlue,
    onSecondary: tdBlue,
    error: tdRed,
    onError: tdRed.withOpacity(0.7),
    background: tdWhite,
    onBackground: tdWhiteO,
    surface: tdWhite,
    onSurface: tdWhiteO,
  ),
  primaryColor: tdYellow,
  primaryColorDark: tdBlackO,
  primaryColorLight: tdBlack,
  scaffoldBackgroundColor: tdWhite,
  highlightColor: tdWhite,
  unselectedWidgetColor: tdGrey,
  appBarTheme: AppBarTheme(
    actionsIconTheme: IconThemeData(color: tdBlack),
    centerTitle: true,
    elevation: 2,
    backgroundColor: tdWhite,
    foregroundColor: tdBlack,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: tdBlack,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: tdYellow,
    enableFeedback: false,
    focusColor: tdYellow.withOpacity(0.8),
    foregroundColor: tdBlack,
    hoverColor: tdYellow,
    splashColor: tdYellow,
  ),
);
