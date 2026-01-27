import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rental_application/core/router/route.dart';
import 'package:rental_application/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

/// App raiz
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Tamanho de referência do design (ex.: Figma/iPhone X)
      designSize: const Size(375, 812),

      // Ajuda a adaptar textos (especialmente em telas menores)
      minTextAdapt: true,

      // Ajuda em multi-janela / split screen (tablets e desktops)
      splitScreenMode: true,

      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Home Rental Mobile App',
          theme: AppTheme.lightTheme(context),
          routerConfig: router,
        );
      },
    );
  }
}
