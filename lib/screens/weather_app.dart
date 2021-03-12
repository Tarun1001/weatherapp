import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/model/weather_location.dart';
import 'package:weatherapp/widgets/single_weather.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              child: SvgPicture.asset("assets/images/menu.svg"),
            ),
          )
        ],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
          child: Stack(
        children: [
          Image.asset(
            "assets/images/nightimage.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 15),
            child: Row(
              children: [
                Container(
                  width: 12,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                )
              ],
            ),
          ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: locationList.length,
            itemBuilder: (context, i) => SingleWeather(index: i),
          ),
        ],
      )),
    );
  }
}
