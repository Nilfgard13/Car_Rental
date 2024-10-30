import 'package:flutter/material.dart';
import 'package:rental_car/detail_view.dart';

class HouseWidget extends StatelessWidget {
  List<String> Locations = [
    "The Toyota Innova...",
    "The pajero Sport....",
    "The Toyota Zenix..",
  ];
  List<String> HouseName = [
    "Innova",
    "Pajero Sport",
    "Toyota Zenix",
  ];
  List<String> HouseImage = [
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 140,
                        child: InkWell(
                          onTap: () {
                             // Navigate to HouseView using named route
                            Navigator.of(context).pushNamed(
                              '/widget',
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(HouseImage[i]),
                          ),
                        ),
                      ),
                      // Positioned(
                      //   top: 10,
                      //   right: 10,
                      //   child: Container(
                      //     height: 40,
                      //     width: 40,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //     child: Center(
                      //       child: Icon(
                      //         Icons.favorite,
                      //         color: Colors.red.shade300,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  Text(
                    HouseName[i],
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      Icon(Icons.adjust_sharp),
                      Text(
                        Locations[i],
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Text(
                    "  Avalaible",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
