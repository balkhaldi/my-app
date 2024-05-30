import 'package:doctorapp/color.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Row(children: [
            SizedBox(
                width: 200,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/logo_hospital.png",
                      fit: BoxFit.cover),
                )),
          ]),
          Expanded(
              child: ListTile(
                title: const Text("My Health Summery", style: TextStyle(color: blue6, fontSize: 16, fontWeight: FontWeight.bold)),
                leading: Icon(MdiIcons.heartPlus, color:blue6),
                onTap: () {},
              )),
          ListTile(
            title: const Text("Laboratory Reports", style: TextStyle(color: blue6 , fontSize: 16, fontWeight: FontWeight.bold)),
            leading: Icon(MdiIcons.flask, color: blue6),
          ),
          ListTile(
            title: const Text("Radiology Reports", style: TextStyle(color: blue6 , fontSize: 16, fontWeight: FontWeight.bold)),
            leading: Icon(MdiIcons.radiologyBox, color: blue6),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Sick Leave" , style: TextStyle(color: blue6 , fontSize: 16, fontWeight: FontWeight.bold),),
            leading: const Icon(Icons.local_hospital, color: blue6),
            onTap: () {},
          ),
          ListTile(
            title: const Text("My Vaccinations", style: TextStyle(color: blue6 , fontSize: 16, fontWeight: FontWeight.bold)),
            leading: const Icon(Icons.vaccines, color: blue6),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Approval Status" , style: TextStyle(color: blue6 , fontSize: 16, fontWeight: FontWeight.bold)),
            leading: Icon(MdiIcons.listStatus, color: blue6),
            onTap: () {},
          ),
          ListTile(
            title: const Text("SignOut" , style: TextStyle(color: blue6, fontSize: 16, fontWeight: FontWeight.bold)),
            leading: const Icon(Icons.exit_to_app, color: blue6),
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
