import 'package:doctorapp/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointScreen extends StatefulWidget {
  final Map<String, dynamic> doctorData;

  AppointScreen({super.key, required this.doctorData});

  @override
  _AppointScreenState createState() => _AppointScreenState();
}

class _AppointScreenState extends State<AppointScreen> {
  int selectedDate = -1;
  int selectedTime = -1;

  @override
  Widget build(BuildContext context) {
    String name = widget.doctorData["name"];
    String type = widget.doctorData["type"];
    String image = widget.doctorData["image"].toString();
    String description = widget.doctorData["description"];
    return Material(
        child: SingleChildScrollView(
            child: Column(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2.1,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.doctorData["image"]),
            fit: BoxFit.cover,

          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  blue6.withOpacity(0.5),
                  blue3.withOpacity(0),
                  blue6.withOpacity(0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                                margin: const EdgeInsets.all(8),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: blue5,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: blue5,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: blue6,
                                        size: 28,
                                      )),
                                )),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            child: const Center(
                                child: Icon(
                              Icons.favorite_outline,
                              color: blue6,
                            )),
                          )
                        ]),
                  ),
                  const SizedBox(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Patients",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                                Text("1.8K",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    )),
                              ]),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Experience",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                              Text("10 yr",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rating",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                              Text("4.9",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      )),
                  // Other child widgets can go here
                ])),
      ),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: const TextStyle(
                    color: blue6, fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(MdiIcons.heartPlus, color: Colors.red, size: 32),
                const SizedBox(width: 5),
                Text(
                  type,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              description,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              "Book Time",
              style: TextStyle(
                fontSize: 18,
                color: blue6,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 3),
            Container(
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedTime = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                        color:
                            selectedTime == index ? Colors.blue : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "${index + 8} : 00 AM",
                          style: TextStyle(
                            fontSize: 17,
                            color: selectedTime == index ? blue6 : blue6,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
            const Text("Book Date",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: blue6,
                )),
            const SizedBox(height: 8),
            Container(
                height: 70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedDate = index;
                          });
                        },
                        child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 25),
                            decoration: BoxDecoration(
                              color:
                                  selectedDate == index ? blue3 : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: blue3,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${index + 8}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        selectedDate == index ? blue6 : blue6,
                                  ),
                                ),
                                Text("DEC",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: index == 1 ? blue6 : blue6,
                                    )),
                              ],
                            )),
                      );
                    })),

            SizedBox(
              height: 50,
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: const Center(
                      child: Text(
                        "Book Appointment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ])));
  }
}
