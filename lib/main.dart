import 'package:flutter/material.dart';
import 'package:wheath_app/provaider/weather_provaider.dart';


void main() async {
  Map data = await WeatherProvaider().getAllData();
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather application'),
          backgroundColor: Colors.deepOrange,
        ),
      ),
    )
  );
}