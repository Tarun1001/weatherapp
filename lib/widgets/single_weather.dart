import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherapp/model/weather_location.dart';

class SingleWeather extends StatelessWidget {
  final int index;
  SingleWeather({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 140.0, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(locationList[index].city,
                          style: GoogleFonts.lato(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(locationList[index].dateTime,
                          style: GoogleFonts.lato(
                              fontSize: 14, color: Colors.white))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${locationList[index].temperature}\u2103",
                          style: GoogleFonts.lato(
                              fontSize: 85,
                              fontWeight: FontWeight.w300,
                              color: Colors.white)),
                      Row(
                        children: [
                          Image.asset(locationList[index].iconURL),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Night",
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Wind",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("10",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white)),
                        Text("Km/h",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.green,
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("rain",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("10",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white)),
                        Text("%",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Humidity",
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("10",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white)),
                        Text("%",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              color: Colors.red,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
