import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: WhiteColor,
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*2/3,
                color: BackGroundColor,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: SvgPicture.asset(
                    'assets/images/dolphin.svg',
                    height: MediaQuery.of(context).size.height*2/6
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(),
            )
          ]
        ),
      )
    );
  }
}
