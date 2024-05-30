import 'package:doctorapp/color.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});



  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<CustomNavigation> {
  int selectedindex = 0 ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (val){
        setState(() {
          selectedindex = val;
        });

      },
      currentIndex:selectedindex ,
      backgroundColor:blue5,
      selectedItemColor: Colors.black,
      unselectedItemColor: blue6,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold , color: blue6),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold , color: blue6),

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.family_restroom) , label: "My Family"),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble) , label: "About Us"),
        BottomNavigationBarItem(icon: Icon(Icons.settings) , label: "Settings"),

      ],
    );
  }
}
