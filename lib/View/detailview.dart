import 'package:flutter/material.dart';
import 'package:lottieapp/Constants/lists.dart';
import 'package:lottieapp/Widgets/lottiefileshow.dart';

class DetailView extends StatefulWidget {
  final String lottie;

  const DetailView({Key key, this.lottie}) : super(key: key);
  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  var list = AppLists.dogColors;
  int index = 2;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(list[index], BlendMode.modulate),
                child: LottieAsset(
                  lottieName: widget.lottie,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: list
                    .map((e) => InkWell(
                          onTap: () {
                            setState(() {
                              index = list.indexOf(e);
                            });
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration:
                                BoxDecoration(color: e, shape: BoxShape.circle),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
