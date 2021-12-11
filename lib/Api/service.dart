import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherr/Api/model.dart';


class WeatherApiClient{
    Future<Weather>? getCurrentWeather(String? location)async{
       var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=5d76a73c058447c9e6a74b435805d0b4&units=metric");
       var response = await http.get(endpoint);
       var body = jsonDecode(response.body);
       return  Weather.fromJson(body);
    }
}





































// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:weatherr/Api/model.dart';
//
// class DataService {
//   Future<WeatherResponse> getWeather(String city) async {
//     // api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
//     final parameters = {'q': city, 'appid': '5d76a73c058447c9e6a74b435805d0b4'};
//     final uri =
//         Uri.https('api.openweathermap.org', '/data/2.5/weather', parameters);
//     final response = await http.get(uri);
//     final json = jsonDecode(response.body);
//     return WeatherResponse.fromJson(json);
//   }
// }
