import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  List<String> Locations = [
    "Richardson, California",
    "Los Angeles, California",
    "Naerobi, UK",
  ];
  List<String> HouseName = [
    "Summer House",
    "Emerald Palace",
    "Europe Palace",
  ];
  List<String> HouseImage = [
    "assets/rumah.jpg",
    "assets/rumah.jpg",
    "assets/rumah.jpg",
  ];

  final HouseTextStyle = TextStyle(fontSize: 20, color: Colors.black54);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.shade300,
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/image.jpg"),
                      ),
                    ),
                    Positioned(
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.indigo,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                
                Text(
                  "Toyota Innova",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.date_range_outlined,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Avalaible on Sunday & Monday",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rental mobil Innova menyediakan kendaraan yang nyaman, luas, dan andal untuk berbagai kebutuhan perjalanan Anda. Dengan desain interior yang elegan dan kapasitas yang mampu menampung hingga 7 penumpang, Innova sangat cocok untuk perjalanan keluarga, perjalanan bisnis, atau liburan bersama teman-teman.",
                ),
                SizedBox(
                  height: 20,
                ),
                
                Row(
                  children: [
                    Icon(
                      Icons.car_repair,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Spesifikasi Mobil",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "6 Person",
                      style: HouseTextStyle,
                    ),
                    Text(
                      "Black",
                      style: HouseTextStyle,
                    ),
                    Text(
                      "Condition Normal",
                      style: HouseTextStyle,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 20,
                // ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Available status",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "24 IDR/",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                              ),
                            ),
                            Text("day"),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_car_filled_outlined,
                            color: Colors
                                .yellow, // Set the color of the star to yellow
                            size: 24, // Adjust the size of the star as needed
                          ),
                          SizedBox(
                              width:
                                  8), // Add some space between the icon and the text
                          Text(
                            "Rent this car",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
