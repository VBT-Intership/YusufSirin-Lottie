import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottieapp/Constants/appstring.dart';

class LottieAsset extends StatelessWidget {
  final String lottieName;

  const LottieAsset({Key key, this.lottieName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
        AppStrings.lottiurl + lottieName + AppStrings.lottijson);
  }
}
