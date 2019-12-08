import 'package:flutter/material.dart';
import 'package:wheath_app/provaider/weather_provaider.dart';

Future<void> main() async {
  final Map data = await WeatherProvaider().getAllData();
  print('Result is ' + data['city']['name'].toString());
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Weather application'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        height: 800.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 800.0,
              child: Image(
                image: const AssetImage('asset/israelsunset.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
