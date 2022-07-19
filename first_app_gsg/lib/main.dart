import 'package:easy_localization/easy_localization.dart';
import 'package:first_app_gsg/Navigation/First_Screen.dart';
import 'package:first_app_gsg/Navigation/Second_Screen.dart';
import 'package:flutter/material.dart';
import 'package:first_app_gsg/statfulTest/statfulTest.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'FaceBook_UI/FaceBook_ui.dart';
import 'NewsApp/screens/home.dart';

// class app extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return TheApp();
//   }
// }

// class TheApp extends State<app> {
//   bool isDark = false;
//   changeTheme(bool value) {
//     isDark = value;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       darkTheme: ThemeData(brightness: Brightness.dark),
//       theme: isDark ? ThemeData.dark() : ThemeData.light(),
//       // themeMode: ,
//       debugShowCheckedModeBanner: false,
//       home: Test(changeTheme),
//       // home: FacebookUi(),
//       // home: FaceBook2_ui(),
//       // home: InstagramUi(),
//     );
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/langs', // <-- change the path of the translation files
      fallbackLocale: Locale('en'),
      child: materialapp(),
    ),
  );
}

class materialapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          home: FacebookUi(),
          // routes: {
          //   First_Screen.FirstScreenName: (context) => First_Screen(),
          //   Second_Screen.SecondScreenName: (context) => Second_Screen(),
          // },
        );
      },
    );
  }
}
