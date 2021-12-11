class Weather {
  String? cityName;
  double? cityTemp;
  Weather({
    this.cityTemp,
    this.cityName,
  });

  Weather.fromJson(Map<String , dynamic>json){
    cityName = json["name"];
    cityTemp = json["main"]["temp"];
  }
}


































// /*
// {
//   "weather": [
//     {
//       "description": "clear sky",
//       "icon": "01d"
//     }
//   ],
//   "main": {
//     "temp": 282.55,
//     "feels_like": 281.86,
//     "temp_min": 280.37,
//     "temp_max": 284.26,
//   },
//
//
//   "name": "Mountain View",
//   "cod": 200
//   }
// */
//
// // class CityDescription{
// //   final String cityInfo;
// //   CityDescription({required this.cityInfo});
// //   factory CityDescription.fromJson(Map<String, dynamic>json){
// //     final cityInfo = json['desciption'];
// //     return CityDescription(cityInfo: cityInfo);
// //   }
// // }
// class TemperatureInfo{
//   final double cityTemp;
//   TemperatureInfo({required this.cityTemp});
//   factory TemperatureInfo.fromJson(Map<String, dynamic>json){
//     final cityTemp = json['temp'];
//     return TemperatureInfo(cityTemp: cityTemp);
//   }
// }
// class WeatherResponse{
//   final String cityName;
//   final TemperatureInfo cityTemp;
//   // final CityDescription cityInfo;
//   WeatherResponse({required this.cityName,required this.cityTemp});
//   factory WeatherResponse.fromJson(Map<String,dynamic>json){
//     final cityName = json['name'];
//     //Temperature
//     final tempInfoJson = json['main'];
//     final cityTemp = TemperatureInfo.fromJson(tempInfoJson);
//     //DESCRIPTION
//     // final cityInfoJson = json['weather'][0];
//     // final cityInfo = CityDescription.fromJson(cityInfoJson);
//      return WeatherResponse(cityName: cityName , cityTemp: cityTemp);
//   }
//
// }
