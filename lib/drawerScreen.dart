import 'package:flutter/material.dart';
import 'package:pet_ui_app/listOther.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff416d6d),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  maxRadius: 25,
                  child: Image.network(
                    'https://eshendetesia.com/images/user-profile.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Miliona Scerether',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Active Status',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map((e) => Row(
                      children: [
                        Icon(
                          e['icon'],
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          e['title'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Setting',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400]),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 2,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'LogOut',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
