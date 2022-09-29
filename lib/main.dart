import 'package:cannabitz_networking/const/keys.dart';
import 'package:cannabitz_networking/const/app_strings.dart';
import 'package:cannabitz_networking/ui/route/route.dart';
import 'package:cannabitz_networking/ui/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  ApiKeys().collectAppID();
  ApiKeys().collectApiKey();
  await Firebase.initializeApp(
    name: AppString.appName,
    options: FirebaseOptions(
      apiKey: ApiKeys.appKey,
      appId: ApiKeys.appID,
      messagingSenderId: ApiKeys.messagingSenderId,
      projectId: ApiKeys.projectId,
    ),
  );

  runApp(
    // App(
    //   appID: ApiKeys.appID,
    //   apiKey: ApiKeys.appKey,
    // ),
    MyApp(),
  );
}

// class App extends StatelessWidget {
//   String appID;
//   String apiKey;
//   App({required this.appID, required this.apiKey});
//   @override
//   Widget build(BuildContext context) {
//     // Create the initialization Future outside of `build`:
//     final Future<FirebaseApp> _initialization = Firebase.initializeApp(
//       name: AppString.appName,
//       options: FirebaseOptions(
//         apiKey: apiKey,
//         appId: appID,
//         messagingSenderId: ApiKeys.messagingSenderId,
//         projectId: ApiKeys.projectId,
//       ),
//     );
//     return FutureBuilder(
//       // Initialize FlutterFire:
//       future: _initialization,
//       builder: (context, snapshot) {
//         // Check for errors
//         if (snapshot.hasError) {
//           return const Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//         // Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return MyApp();
//         }
//         // Otherwise, show something whilst waiting for initialization to complete
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().lightTheme(context),
          darkTheme: AppTheme().darkTheme(context),
          themeMode: ThemeMode.light,
          initialRoute: splash,
          getPages: getPages,
        );
      },
    );
  }
}
