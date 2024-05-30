import 'package:doctorapp/color.dart';
import 'package:doctorapp/compontes/category_tab.dart';
import 'package:doctorapp/compontes/custom_navigation.dart';
import 'package:doctorapp/compontes/doctor_data.dart';
import 'package:doctorapp/compontes/doctor_item.dart';
import 'package:doctorapp/routers/constants.dart';
import 'package:doctorapp/views/appointscreen.dart';
import 'package:doctorapp/views/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigation(),
      backgroundColor: blue5,
      appBar: AppBar(
        backgroundColor: blue6,
        actions: [
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 9,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    blue6,
                    blue6,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Column(
                children: [
                  _buildBody(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getHeader(),
            _getCategories(),
            _getPopular(),
          ],
        ));
  }

  Widget _getHeader() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: gap, right: gap, top: gap),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "  Hey, Bashayer",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5),
            ),
            SizedBox(height: 2),
            Text(
              "•    File Number: 500987643    •    22 years    •    Female",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCategories() {
    return Container(
      padding: const EdgeInsets.only(top: gap),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: gap, right: gap),
            child: const Text(
              "Categories",
              style: TextStyle(
                color: blue6,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(height: gap),
          const CategoryTab(),
        ],
      ),
    );
  }

  Widget _getPopular() {
    return Container(
        padding: const EdgeInsets.only(top: gap),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: gap, right: gap),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended Doctor",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22, color: blue6),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: gap,
          ),
          Container(
            padding: const EdgeInsets.only(left: gap, right: gap),
            child: GestureDetector(
              onTap: () {
                Get.to(AppointScreen(doctorData: DoctorMapList[0]));

                // });
              },
              child: DoctorItem(doctorData: DoctorMapList[0], index: 0),
            ),
          ),
        ]));
  }
}
