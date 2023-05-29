import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:news_app/src/pages/home_page.dart';
import 'package:news_app/src/repositories/news_services.dart';
import 'package:news_app/src/theme/app_fonts.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    NewsService().fetchNews();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          theme: ThemeData(
            fontFamily: AppFont.of(context).fontRegular
          ),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
