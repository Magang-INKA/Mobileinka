import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  //final int defaultSelectedIndex;
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
        //bottom nav
        navbarItem(Icons.home,0),
        navbarItem(Icons.data_thresholding,1),
        navbarItem(Icons.qr_code,2),
        navbarItem(Icons.data_usage_sharp,3),
        navbarItem(Icons.settings,4),
        //bottom nav data container
      ]
    );
  }

  // navbar item
    Widget navbarItem(IconData icon, int index){
        return GestureDetector(
          onTap: () {
            setState((){
              _selectedItemIndex = index;
            });
          },
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width/5,
            decoration: index == _selectedItemIndex ?
            BoxDecoration(
              border : Border(
                bottom: BorderSide(width: 4, color: Colors.blue)
              ),
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.3),
                Colors.blue.withOpacity(0.015)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              ),
              color: Colors.white,
              //color: index == _selectedItemIndex ? Colors.blue[100] : Colors.white
            ) : BoxDecoration(),
            child: Icon(
              icon,
            color: index == _selectedItemIndex ? Colors.black : Colors.grey),
          ),
        );
      }
}