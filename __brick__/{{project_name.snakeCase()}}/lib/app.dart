import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mason_app_temlate/core/providers/theme_provider.dart';
import 'package:mason_app_temlate/core/routes/part_of.dart';
import 'package:mason_app_temlate/core/static/theme/theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeProvider).value;

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Template',
          debugShowCheckedModeBanner: false,
          theme: context.lightTheme,
          darkTheme: context.darkTheme,
          themeMode: themeMode,

          /// ThemeMode.system
          routerConfig: router,
        );
      },
    );
  }
}
