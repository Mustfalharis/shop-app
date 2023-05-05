import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:social_app/routes/routes.dart';
import 'package:social_app/utils/local/cache_helper.dart';
import 'package:social_app/utils/theme.dart';
import 'firebase_file/firebase_options.dart';
import 'package:get/get.dart';

import 'logic/controllres/them_controller.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init();
  // await CacheHelper.init();
  String widget;
  if(FirebaseAuth.instance.currentUser!=null||GetStorage().read('auth')==true)
    {
      widget=AppRoutes.mainScreen  ;
    }
  else
    {
      widget=AppRoutes.welcome  ;
    }
  runApp(MyApp(startWidget: widget,));
}

class MyApp extends StatelessWidget {
  final String startWidget;
  MyApp({ required this.startWidget});

  @override
  Widget build(BuildContext context) {
         return GetMaterialApp (
           debugShowCheckedModeBanner:false,
           theme: ThemesApp.light,
           darkTheme: ThemesApp.dark,
           themeMode: ThemController().themeDateGet,
           initialRoute: startWidget.toString(),
           getPages: AppRoutes.routes,
           );
  }
}
