import 'package:flutter/material.dart';
import 'package:netflix_example/core/colors/colors.dart';
import 'package:netflix_example/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // colorScheme: ColorScheme(
          //     brightness: brightness,
          //     primary: primary,
          //     onPrimary: onPrimary,
          //     secondary: secondary,
          //     onSecondary: onSecondary,
          //     error: Colors.red
          //     onError: Colors.redAccent,
          //     background: Colors.black,
          //     onBackground: onBackground,
          //     surface: surface,
          //     onSurface: onSurface)
          scaffoldBackgroundColor: backgroundColor,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              color: Colors.white,
            ) ,
            bodyMedium:  TextStyle(
              color: Colors.white,
            ) ,
            bodySmall:  TextStyle(
              color: Colors.white,
            ) ,
          )
          ),
      home: ScreenMainPage(),
    );
  }
}
