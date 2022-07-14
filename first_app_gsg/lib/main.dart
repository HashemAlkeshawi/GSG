import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:first_app_gsg/statfulTest/statfulTest.dart';

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
      supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en', 'US'),
      child: materialapp(),
    ),
  );
}

class materialapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
