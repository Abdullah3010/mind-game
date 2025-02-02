import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mind_game/core/assets/fonts.gen.dart';

class AppThemes {
  static ThemeData get light => ThemeData(
        fontFamily: FontFamily.cairo,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.transparent,
        // primaryColor: CSTApp.navKey.currentContext?.themeMS.colorScheme.blue18,
        // iconTheme: IconThemeData(color: CSTApp.navKey.currentContext?.themeMS.colorScheme.blue18),
        // appBarTheme: AppBarTheme(
        //   elevation: 0,
        //   backgroundColor: CSTApp.navKey.currentContext?.themeMS.colorScheme.white,
        //   foregroundColor: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        // ),
        // scaffoldBackgroundColor: CSTApp.navKey.currentContext?.themeMS.colorScheme.white,
        // textTheme: TextTheme(
        //   displayLarge: TextStyle(
        //     fontSize: 72.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   displayMedium: TextStyle(
        //     fontSize: 60.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   displaySmall: TextStyle(
        //     fontSize: 48.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   headlineLarge: TextStyle(
        //     fontSize: 36.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   headlineMedium: TextStyle(
        //     fontSize: 30.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   headlineSmall: TextStyle(
        //     fontSize: 24.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   titleLarge: TextStyle(
        //     fontSize: 20.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   titleMedium: TextStyle(
        //     fontSize: 18.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   titleSmall: TextStyle(
        //     fontSize: 16.sp,
        //     fontWeight: FontWeight.bold,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   bodyLarge: TextStyle(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   bodyMedium: TextStyle(
        //     fontSize: 12.sp,
        //     fontWeight: FontWeight.w400,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        //   bodySmall: TextStyle(
        //     fontSize: 11.sp,
        //     fontWeight: FontWeight.w400,
        //     color: CSTApp.navKey.currentContext?.themeMS.colorScheme.black,
        //   ),
        // ),
        // // Todo: enable with for
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintStyle: TextStyle(
            color: const Color(0xFF939598),
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
            height: 1.1,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFF280A82)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFF280A82)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFF280A82)),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFF280A82)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFFFF0000), width: 1.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(color: Color(0xFFFF0000), width: 1),
          ),
        ),
      );
}
