import 'package:doctorapp/model/categories_data.dart';
import 'package:doctorapp/routers/constants.dart';
import 'package:flutter/material.dart';
import '../color.dart';

class CategoryItem extends StatelessWidget {
  final bool isActive;
  final String image;
  final String title;
  final Function()? onTap;

  const CategoryItem({super.key,
    this.isActive = false,
    this.image = "",
    this.title = "",
    this.onTap});

  @override
  Widget build(BuildContext context) {

      return Padding(
        padding: EdgeInsets.only(left: gap),
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 100,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 10),
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Center(
                    child: Image.asset("assets/images/$image"),

                  ),
                ),
                SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10.5,
                  fontWeight: FontWeight.bold,
                  ),
                ),
        ]))
        ));
        }
  }

