import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherProvaider {
  Future<Map> getAllData() async {
    const String api =
        'https://samples.openweathermap.org/data/2.5/forecast/hourly?id=524901&appid=b6907d289e10d714a6e88b30761fae22';
    final data = await http.get(api);
    final dynamic jsonData=json.decode(data.body);
    return jsonData;
  }
}