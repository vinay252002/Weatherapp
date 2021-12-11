import 'package:flutter/material.dart';
import 'package:weatherr/Api/model.dart';
import 'package:weatherr/constants/card.dart';
import 'package:weatherr/Api/service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data1;
  Weather? data2;
  Weather? data3;
  Weather? data4;
  Weather? data5;
  Weather? data6;
  Weather? data7;
  Weather? data8;
  Weather? data9;
  Weather? _response;
  final controllerText = new TextEditingController();
  Future<void> getData() async {
    data1 = await client.getCurrentWeather("Mumbai");
    data2 = await client.getCurrentWeather("Delhi");
    data3 = await client.getCurrentWeather("Bangalore");
    data4 = await client.getCurrentWeather("Hyderabad");
    data5 = await client.getCurrentWeather("Tamil Nadu");
    data6 = await client.getCurrentWeather("Kerala");
    data7 = await client.getCurrentWeather("Bihar");
    data8 = await client.getCurrentWeather("Patna");
    data9 = await client.getCurrentWeather("Gujarat");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 250,
                      child: TextField(
                        controller: controllerText,
                        decoration: InputDecoration(
                          fillColor: Colors.black45,
                          hintText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: _search,
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
                 Container(
                  child: Item(name: "", temp: ""),
                ),

              SizedBox(height: 30),
              Container(
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Item(name: "${data1!.cityName}", temp: "${data1!.cityTemp}"),
                    Item(name: "${data2!.cityName}", temp: "${data2!.cityTemp}"),
                    Item(name: "${data3!.cityName}", temp: "${data3!.cityTemp}"),
                    Item(name: "${data4!.cityName}", temp: "${data4!.cityTemp}"),
                    Item(name: "${data5!.cityName}", temp: "${data5!.cityTemp}"),
                    Item(name: "${data6!.cityName}", temp: "${data6!.cityTemp}"),
                    Item(name: "${data7!.cityName}", temp: "${data7!.cityTemp}"),
                    Item(name: "${data8!.cityName}", temp: "${data8!.cityTemp}"),
                    Item(name: "${data9!.cityName}", temp: "${data9!.cityTemp}"),

                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          );
        }else if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        return Container();
      },
    );
  }
  void _search() async{
    final search_data = await client.getCurrentWeather(controllerText.text);
    print(search_data!.cityName);
    print(search_data.cityTemp);
    setState(() {
      _response = search_data;
    });

  }
}
