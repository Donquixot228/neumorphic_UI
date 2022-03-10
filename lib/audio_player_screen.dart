import 'package:flutter/material.dart';
import 'package:neumorphic_ui/resources/app_colors.dart';
import 'package:neumorphic_ui/widgets/button.dart';
import 'package:neumorphic_ui/widgets/slider.dart';
import 'package:neumorphic_ui/widgets/text_widgets.dart';
import 'package:neumorphic_ui/widgets/track_image.dart';

class AudioPlayerScreen extends StatelessWidget {
  const AudioPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      // backgroundColor: Colors.deepOrange,
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),

          // APP BAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomButtom(
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.iconColor,
                  ),
                  primaryBgColor: AppColors.primarybuttonColor,
                  secondaryBgColor: AppColors.secondaryButtonColor,
                ),
                Text(
                  "NEO",
                  style: TextStyle(
                    color: AppColors.iconColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomButtom(
                  child: Icon(
                    Icons.menu,
                    color: AppColors.iconColor,
                  ),
                  primaryBgColor: AppColors.primarybuttonColor,
                  secondaryBgColor: AppColors.secondaryButtonColor,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          // AUDIO TRACK IMAGE

          const TrackImage(),

          const SizedBox(
            height: 40,
          ),

          // TRACK NAME AND DESCRIPTION
          const Text(
            "Lose it",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Flume ft. Vic Mensa",
            style: TextStyle(
              color: AppColors.iconColor,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          // TRACK PROGRESS
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: const [
                TrackTimerWidget(),
                // Neumorphic slider
                CustomSlider(),
              ],
            ),
          ),

          // TRACK CONTROLL BUTTON
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomButtom(
                  padding: EdgeInsets.all(25),
                  child: Icon(
                    Icons.fast_rewind_rounded,
                    color: AppColors.iconColor,
                  ),
                  primaryBgColor: AppColors.primarybuttonColor,
                  secondaryBgColor: AppColors.secondaryButtonColor,
                ),
                CustomButtom(
                  padding: EdgeInsets.all(25),
                  child: Icon(
                    Icons.pause,
                    color: Colors.white,
                  ),
                  primaryBgColor: AppColors.primaryActiveButtonColor,
                  secondaryBgColor: AppColors.secondaryActiveButtonColor,
                ),
                CustomButtom(
                  padding: EdgeInsets.all(25),
                  child: Icon(
                    Icons.fast_forward_rounded,
                    color: AppColors.iconColor,
                  ),
                  primaryBgColor: AppColors.primarybuttonColor,
                  secondaryBgColor: AppColors.secondaryButtonColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
