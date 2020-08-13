import 'package:flutter/material.dart';
import 'package:lottieapp/Constants/appstring.dart';
import 'package:lottieapp/Widgets/lottiefileshow.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LottieAsset(
          lottieName: AppStrings.poodlewaving,
        ),
      ),
    );
  }
}
