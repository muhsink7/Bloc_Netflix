import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_example/core/colors/colors.dart';
import 'package:netflix_example/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/fiVW06jE7z9YnO4trhaMEdclSiC.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: kWhiteColor,
              ),
              const Text('Smart Downloads'),
            ],
          ),
          const Text("Introducing downloads for you"),
          const Text(
              "We will download a personalised selection of movies and shows for you, so there's is always something to watch on your device "),
          Center(
            child: Container(
              width: size.width,
              height: size.width,
              color: kWhiteColor,
              child: Stack(alignment: Alignment.center, children: [
                CircleAvatar(
                  radius: size.width * 0.40,
                ),
                DownloadsImageWidget(imageList: imageList[0], margin: const EdgeInsets.only(
                      left: 130.0,     
                      bottom: 50,                 
                    ), angle: 20, size: Size(size.width * 0.4, size.height * 0.58),
                    radiuss: 30,
                    ),
                DownloadsImageWidget(imageList: imageList[1], margin: const EdgeInsets.only(
                      right: 130.0,    
                      bottom: 50,                  
                    ), angle: -20, size:  Size(size.width * 0.4, size.height * 0.58)),
                    DownloadsImageWidget(imageList: imageList[2], margin: const EdgeInsets.only(
                      bottom: 10,                      
                    ), angle: 0, size:  Size(size.width * 0.5, size.height * 0.64),
                    radiuss: 50,
                    )
              ]),
            ),
          ),
          MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            child: const Text(
              "Set up",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            color: kButtonColorWhite,
            onPressed: () {},
            child: const Text(
              "See what you can download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    required this.margin,
    required this.angle, required this.size, this.radiuss = 0,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radiuss;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radiuss),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}
