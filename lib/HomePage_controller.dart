import 'dart:async';

import 'package:moveassistant/read.dart';
import 'package:rxdart/subjects.dart';

class HomePageController{
  PublishSubject<double> _temperature = PublishSubject();
  PublishSubject<double> _distance = PublishSubject();

  Stream<double> get temperatureStream => _temperature.stream;
  Stream<double> get distanceStream => _distance.stream;
  

  void dispose() { 
    _temperature.close();
    _distance.close();
  }

  final json = [
      {
        "distance": "3.15",
        "temperature": "30"
      },
      {
        "distance": "3.00",
        "temperature": "31"
      },
      {
        "distance": "2.40",
        "temperature": "28"
      },
      {
        "distance": "1.80",
        "temperature": "29"
      },
      {
        "distance": "1.00",
        "temperature": "30"
      },
      {
        "distance": "1.15",
        "temperature": "33"
      },
      {
        "distance": "1.00",
        "temperature": "37"
      },
      {
        "distance": "0.85",
        "temperature": "40"
      },
      {
        "distance": "0.50",
        "temperature": "48"
      },
      {
        "distance": "0.20",
        "temperature": "60"
      }
    ];

  int idx = 0;

  void runData(){
    const duration = Duration(milliseconds: 500);
    var data = Read.listFromJson(json);
    var timer = Timer.periodic(duration, (timer) {
      if(idx >= data.length-1){
        timer.cancel();
      }
      _temperature.add(data[idx].temperature);
      _distance.add(data[idx].distance);
      idx++;
    });
  }
  
}