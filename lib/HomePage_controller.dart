import 'package:rxdart/subjects.dart';

class HomePageController{
  PublishSubject<int> _temperature = PublishSubject();
  PublishSubject<int> _distance = PublishSubject();

  Stream<int> get temperatureStream => _temperature.stream;
  Stream<int> get distanceStream => _temperature.stream;
  

  void dispose() { 
    _temperature.close();
    _distance.close();
  }
}