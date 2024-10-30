import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:rental_car/widget.dart';

class MainMenu extends StatelessWidget {
  List<String> PropertyType = ["Staff", "Client", "Car", "Avalaible Car"];
  List<Icon> PropertyIcons = [
    Icon(Icons.attribution_outlined,
        size: 40, color: Colors.lightBlue.shade400),
    Icon(Icons.person_2_rounded, size: 40, color: Colors.blue.shade400),
    Icon(Icons.car_repair_outlined, size: 40, color: Colors.green),
    Icon(Icons.car_crash_outlined,
        size: 40, color: Colors.teal),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF7F6FB),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      // Text(
                      //   "Welcome, to ",
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     color: Colors.black54,
                      //   ),
                      // ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.blue.shade700,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                              width: 10), // Space between the icon and text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fachrizal Fazza Ashari", // User's name
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                "User #220605110077", // User's role or department
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.black54,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      label: Text("Search"),
                      suffixIcon: Container(
                        margin: EdgeInsets.all(7),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Icon(
                            Icons.filter_list_sharp,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Find More About our Services",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.9),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(7),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2 - 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          (PropertyIcons[index]),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PropertyType[index],
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "123 items",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available Car",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("See all"),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              HouseWidget(),
            ],
          ),
        ),
        bottomNavigationBar: CircleNavBar(
          onTap: null,
          height: 60,
          circleWidth: 50,
          activeIndex: 2,
          circleColor: Colors.indigo,
          color: Colors.white,
          activeIcons: [
            Icon(
              Icons.location_city_rounded,
              color: Colors.black54,
            ),
            Icon(
              Icons.credit_card,
              color: Colors.black54,
            ),
            Icon(
              Icons.car_rental_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.mail,
              color: Colors.black54,
            ),
            Icon(
              Icons.person,
              color: Colors.black54,
            ),
          ],
          inactiveIcons: [
            Icon(
              Icons.tag_faces_outlined,
              color: Colors.black54,
            ),
            Icon(
              Icons.credit_card,
              color: Colors.black54,
            ),
            Icon(
              Icons.car_rental_outlined,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.mail,
              color: Colors.black54,
            ),
            Icon(
              Icons.person,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
