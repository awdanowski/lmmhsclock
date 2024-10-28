import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.containerColor,
    required this.background,
    required this.beerVeryPale,
    required this.beerPale,
    required this.beerMedium,
    required this.beerDark,
    required this.beerVeryDark,
    required this.linkColor,
    required this.stickyHeader,
    required this.colorRangeBorder,
  });

  final Color containerColor;
  final Color background;
  final Color beerVeryPale;
  final Color beerPale;
  final Color beerMedium;
  final Color beerDark;
  final Color beerVeryDark;
  final Color linkColor;
  final Color stickyHeader;
  final Color colorRangeBorder;

  @override
  ThemeExtension<AppColorsExtension> copyWith({Color? containerColor,
        Color? background,
        Color? beerVeryPale,
        Color? beerPale,
        Color? beerMedium,
        Color? beerDark,
        Color? beerVeryDark,
        Color? linkColor,
        Color? stickyHeader,
        Color? colorRangeBorder}) {
    return AppColorsExtension(
      containerColor: containerColor ?? this.containerColor,
      background: background ?? this.background,
      beerVeryPale: beerVeryPale ?? this.beerVeryPale,
      beerPale: beerPale ?? this.beerPale,
      beerMedium: beerMedium ?? this.beerMedium,
      beerDark: beerDark ?? this.beerDark,
      beerVeryDark: beerVeryDark ?? this.beerVeryDark,
      linkColor: linkColor ?? this.linkColor,
      stickyHeader: stickyHeader ?? this.stickyHeader,
      colorRangeBorder: colorRangeBorder ?? this.colorRangeBorder,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> lerp(
      covariant ThemeExtension<AppColorsExtension>? other,
      double t,
      ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      containerColor: Color.lerp(containerColor, other.containerColor, t)!,
      background: Color.lerp(background, other.background, t)!,
      beerVeryPale: Color.lerp(beerVeryPale, other.beerVeryPale, t)!,
      beerPale: Color.lerp(beerPale, other.beerPale, t)!,
      beerMedium: Color.lerp(beerMedium, other.beerMedium, t)!,
      beerDark: Color.lerp(beerDark, other.beerDark, t)!,
      beerVeryDark: Color.lerp(beerVeryDark, other.beerVeryDark, t)!,
      linkColor: Color.lerp(background, other.background, t)!,
      stickyHeader: Color.lerp(stickyHeader, other.stickyHeader, t)!,
      colorRangeBorder: Color.lerp(colorRangeBorder, other.colorRangeBorder, t)!,
    );
  }
}

class AppTheme {
  static const Color lmmhsCrimson = Color(0xff660000); // Beer Color 15
  static const Color lmmhsGold = Color(0xfff7b314); // Beer Color 10

  static final light = ThemeData.light().copyWith(

    brightness: Brightness.light,
    dialogBackgroundColor: Colors.white,
    highlightColor: lmmhsCrimson,
    primaryColor: lmmhsGold,
    scaffoldBackgroundColor: Color(0xfff5f5f5),
    secondaryHeaderColor: lmmhsCrimson,

    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 5.0,
      backgroundColor: lmmhsCrimson,
      foregroundColor: lmmhsGold,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 36, color: lmmhsGold),
      scrolledUnderElevation: 3.0,
      shadowColor: Colors.black,
      surfaceTintColor: lmmhsCrimson,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      surfaceTintColor: Colors.white,
      color: Colors.white,
    ),
    cardTheme: CardTheme(
      elevation: 3.0,
      color: Colors.white,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.grey.shade200,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Color(0xfff5f5f5),
      // elevation: 3.0,
      // shadowColor: Colors.black,
      surfaceTintColor: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: lmmhsCrimson,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: lmmhsCrimson,
      // circularTrackColor: AppColors.medium[900],
    ),
    sliderTheme: SliderThemeData(
      thumbColor: lmmhsCrimson,
      activeTrackColor: lmmhsCrimson,
      inactiveTrackColor: Color(0xffF8B323), // Beer Color 5
      activeTickMarkColor: Colors.white,
      inactiveTickMarkColor: Colors.white,
      rangeValueIndicatorShape: RectangularRangeSliderValueIndicatorShape(),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.white,
        elevation: 3.0,
        foregroundColor: lmmhsCrimson,
        minimumSize: Size(100, 25),
        // maximumSize: Size(250,50),
        shadowColor: Colors.black,
      ),
    ),
    extensions: [
      _lightAppColors,
    ],
  );

  static final dark = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    canvasColor: Colors.grey.shade800,
    dialogBackgroundColor: Colors.grey.shade900,
    highlightColor: lmmhsGold,
    primaryColor: lmmhsGold,
    scaffoldBackgroundColor: Colors.grey.shade800,
    secondaryHeaderColor: lmmhsGold,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 36, color: lmmhsGold),
      elevation: 5.0,
      backgroundColor: lmmhsCrimson,
      // foregroundColor: lmmhsGold,
      scrolledUnderElevation: 3.0,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.black,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      surfaceTintColor: Colors.black,
      color: Colors.grey.shade900,
    ),
    cardTheme: CardTheme(
      elevation: 3.0,
      color: Colors.grey.shade900,
      shadowColor: Colors.black,
      surfaceTintColor: Colors.white,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.grey.shade900,
      // elevation: 3.0,
      // shadowColor: Colors.black,
      surfaceTintColor: Colors.grey.shade900,
    ),
    iconTheme: IconThemeData(
      color: lmmhsGold,
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: lmmhsGold,
      // circularTrackColor: AppColors.medium[900],
    ),
    sliderTheme: SliderThemeData(
      thumbColor: lmmhsGold,
      activeTrackColor: lmmhsGold,
      inactiveTrackColor: Color(0xffFEE799), // Beer Color 1
      activeTickMarkColor: Colors.grey.shade800,
      inactiveTickMarkColor: Colors.grey.shade800,
      rangeValueIndicatorShape: RectangularRangeSliderValueIndicatorShape(),
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(color: Colors.white),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Color(0xff353535),
        elevation: 3.0,
        foregroundColor: lmmhsGold,
        minimumSize: Size(100, 25),
        shadowColor: Colors.black,
      ),
    ),
    extensions: [
      _darkAppColors,
    ],
  );

  static final _lightAppColors = AppColorsExtension(
    // primary: const Color(0xffeeeeee),
    containerColor: const Color(0xff660000),
    background: Colors.white,
    beerVeryPale: const Color(0xffF8B323),
    beerPale: const Color(0xffDA7E01), // Beer Color 10
    beerMedium: const Color(0xffB65300), // Beer Color 15
    beerDark: const Color(0xff963500), // Beer Color 20
    beerVeryDark: const Color(0xff771C01), // Beer Color 25
    linkColor: const Color(0xffB65300),
    stickyHeader: Colors.grey.shade300,
    colorRangeBorder: Colors.white,
  );

  static final _darkAppColors = AppColorsExtension(
    // primary: const Color(0xff222222),
    containerColor: const Color(0xff660000),
    background: Colors.black,
    beerVeryPale: const Color(0xffFEE799), // Beer Color 1
    beerPale: const Color(0xffF8B323), // Beer Color 5
    beerMedium: const Color(0xffDA7E01), // Beer Color 10
    beerDark: const Color(0xffB65300), // Beer Color 15
    beerVeryDark: const Color(0xff9C3900), // Beer Color 19
    linkColor: const Color(0xffDA7E01),
    stickyHeader: const Color(0xff525252),
    colorRangeBorder: Colors.grey.shade400,
  );
}

extension AppThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appColors;
  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? AppTheme._lightAppColors;
}

extension ThemeGetter on BuildContext {
  /// Usage example: context.theme
  ThemeData get theme => Theme.of(this);
}