import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_example/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Expanded(child: Text(title, style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          )
        ),)),
        const Icon(Icons.cast,color: Colors.white,
        size: 30.0,),
        kWidth,
        Container(
          width: 25.0,
          height: 25.0,
          color: Colors.blue,
        ),
        kWidth,
      ],
    );
  }
}
