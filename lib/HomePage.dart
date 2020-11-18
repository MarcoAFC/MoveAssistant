import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moveassistant/HomePage_controller.dart';
import 'Colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  

  HomePageController controller = HomePageController();  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: WhiteColor,
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*2/3,
                  color: BackGroundColor,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SvgPicture.asset(
                      'assets/images/dolphin.svg',
                      height: MediaQuery.of(context).size.height*2/6,
                      placeholderBuilder: (context) => Container(
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: Stack(
                  children: [
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.4,
                      bottom: MediaQuery.of(context).size.height*0.11,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        height: MediaQuery.of(context).size.height*0.5,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*0.11,
                              child: SvgPicture.asset(
                                "assets/images/black_circle.svg",
                                placeholderBuilder: (context) => Container(),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*0.11,
                              left: MediaQuery.of(context).size.width*0.022,
                              child: SvgPicture.asset(
                                "assets/images/purple_circle.svg",
                                placeholderBuilder: (context) => Container(),
                              ),
                            ),
                          ]
                        )
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.57,
                      top: MediaQuery.of(context).size.height*0.17,
                      child: StreamBuilder<int>(
                        stream: controller.distanceStream,
                        builder: (context, snapshot) {
                          return Text(
                            "${snapshot.hasData? snapshot.data : "XX"} m",
                            style: TextStyle(
                              fontSize: 35
                            ),
                          );
                        }
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.47,
                      top: MediaQuery.of(context).size.height*0.01,
                      child: Container(
                        child: Text(
                          "Distância",
                          style: TextStyle(
                            fontSize: 35,
                            color: TextColor
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.1,
                      top: MediaQuery.of(context).size.height*0.09,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        height: MediaQuery.of(context).size.height*0.5,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*0.11,
                              child: SvgPicture.asset(
                                "assets/images/black_circle.svg",
                                placeholderBuilder: (context) => Container(),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*0.11,
                              left: MediaQuery.of(context).size.width*0.022,
                              child: SvgPicture.asset(
                                "assets/images/purple_circle.svg",
                                placeholderBuilder: (context) => Container(),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.25,
                      bottom: MediaQuery.of(context).size.height*0.175,
                      child: StreamBuilder<Object>(
                        stream: controller.temperatureStream,
                        builder: (context, snapshot) {
                          return Text(
                            "${snapshot.hasData? snapshot.data : "XX"} ºC",
                            style: TextStyle(
                              fontSize: 35
                            ),
                          );
                        }
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*0.11,
                      bottom: MediaQuery.of(context).size.height*0.015,
                      child: Container(
                        child: Text(
                          "Temperatura",
                          style: TextStyle(
                            fontSize: 35
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              )
            ]
          ),
        )
      ),
    );
  }
}
