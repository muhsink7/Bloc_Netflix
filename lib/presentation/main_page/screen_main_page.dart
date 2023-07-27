import 'package:flutter/material.dart';
import 'package:netflix_example/core/colors/colors.dart';
import 'package:netflix_example/presentation/downloads/screen_downloads.dart';
import 'package:netflix_example/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_example/presentation/home/screen_home.dart';
import 'package:netflix_example/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_example/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_example/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

final _pages =[
  ScreenHome(),
  ScreenNewAndHot(),
  ScreenFastLaugh(),
  ScreenSearch(),
  ScreenDownloads(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context, int index,_) {
          return _pages[index];   
        },),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}