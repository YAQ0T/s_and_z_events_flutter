import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFDCFF3),
      body: Center(
        child: SpinKitFoldingCube(
          size: 100.0,

          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: index.isEven ? Color(0xffDE89BE) : Color(0xff40434E),
              ),
            );
          },
        )
      ),
    );
  }
}