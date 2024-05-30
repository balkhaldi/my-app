import 'package:doctorapp/color.dart';
import 'package:doctorapp/compontes/doctor_data.dart';
import 'package:doctorapp/views/appointscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorItem extends StatelessWidget {
  final Map<String, dynamic> doctorData;
  final int index;

  const DoctorItem({super.key, required this.doctorData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: DoctorMapList.length,
            itemBuilder: (context, int index) {
              Map<String, dynamic> doctorData = DoctorMapList[index];
              return Column(children: [
                Container(
                  height: 300,
                  width: 200,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: blue5,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(AppointScreen(
                                  doctorData: DoctorMapList[index]));
                            },
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              child: Image.asset(
                                doctorData['image'].toString(),
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.all(8),
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                      color: blue5,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: blue5,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        )
                                      ]),
                                  child: const Center(
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: blue6,
                                      size: 28,
                                    ),
                                  )))
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        doctorData['name'].toString(),
                        style: const TextStyle(
                          color: blue6,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        doctorData['type'].toString(),
                        style:  const TextStyle(
                          color: blue6,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20.0,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            doctorData['rating'].toString(),
                            style: const TextStyle(
                              color: blue6,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      /*      */ /* const SizedBox(height: 8.0),
          Text(
            'Good Reviews: ${doctorData['goodReviews']}%',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),*/ /*
          ),*/
                      /*const SizedBox(height: 8.0),
          Text(
            'Total Score: ${doctorData['totalScore'].toString()}%',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),*/
                      /*   const SizedBox(height: 8.0),
                      Text(
                        'Satisfaction: ${doctorData['satisfaction']
                            .toString()}%',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),*/
                      /*   const SizedBox(height: 16),
                      Text(
                        doctorData['description'].toString(),
                        style: const TextStyle(
                          fontSize: 3,
                          color: Colors.grey,
                        ),
                      ),*/
                    ],
                  ),
                )
              ]);
            }));
  }
}
