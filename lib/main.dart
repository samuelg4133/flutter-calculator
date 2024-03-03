import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/controllers/theme_controller.dart';
import 'package:hello_world/pages/calculator.dart';
import 'package:hello_world/utils/custom_colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController.instance,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = context.watch<ThemeController>();

    return MaterialApp(
      home: const Calculator(),
      debugShowCheckedModeBanner: false,
      theme: ctrl.getTheme().copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: CustomColors.textColor(
                    ctrl.themeType,
                  ),
                  background: CustomColors.background(
                    ctrl.themeType,
                  ),
                  secondary: CustomColors.textColor(
                    ctrl.themeType,
                  ),
                  tertiary: CustomColors.tertiary(
                    ctrl.themeType,
                  ),
                ),
            textTheme: GoogleFonts.workSansTextTheme(),
          ),
    );
  }
}
