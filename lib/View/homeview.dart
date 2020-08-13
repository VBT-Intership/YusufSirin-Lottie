import 'package:flutter/material.dart';
import 'package:lottieapp/Constants/lists.dart';
import 'package:lottieapp/View/detailview.dart';
import 'package:lottieapp/Widgets/lottiefileshow.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
        itemCount: AppLists.dogs.length,
        itemBuilder: (BuildContext context, int index) {
          var dog = AppLists.dogs[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailView(
                      lottie: dog,
                    ),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                shape: BeveledRectangleBorder(
                  side: BorderSide(width: 2, color: Colors.cyanAccent),
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.greenAccent,
                child: LottieAsset(
                  lottieName: dog,
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
