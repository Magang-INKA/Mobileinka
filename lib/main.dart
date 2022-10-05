import 'package:flutter/material.dart';
import 'package:flutterinka/pages/change_email.dart';
import 'package:flutterinka/pages/change_phone.dart';
import 'package:flutterinka/pages/change_password.dart';
import 'package:flutterinka/pages/dashboard.dart';
import 'package:flutterinka/pages/login.dart';
import 'package:flutterinka/pages/profiles.dart';
//import 'package:flutterinka/pages/qr.dart';
import 'package:flutterinka/pages/register.dart';
import 'package:flutterinka/pages/home.dart';
import 'package:flutterinka/pages/data_container.dart';

void main() {runApp(new MyApp());}

class MyApp extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  @override

  //12
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: 'home',
      routes: {
        'login': (context) => LoginPage(),
        'register' : (context) => Register(),
        'home' : (context) => HomePage(),
        'container':(context) => DataContainer(),
        'profiles' : (context) => ProfilePage(),
        'changeEmail' : (context) => PageEmail(),
        'changePhone' : (context) => PagePhone(),
        'changePassword': (context) => PagePassword(),
        //'qrcode' : (context) => QR_code(),
      },
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'INKA';

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //   centerTitle: true,
      // ),
      body: TabBarView(
        children: <Widget>[
          HomePage(),
          DataContainer(),
          //Cart(),
          ProfilePage(),
          //More(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              //labelColor: Color.fromRGBA(255, 26, 40, 196),
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.home,
                    size: 24.0,
                  ),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(
                    Icons.category,
                    size: 24.0,
                  ),
                  text: 'Data Container',
                ),
                // Tab(
                //   icon: Icon(
                //     Icons.shopping_cart,
                //     size: 24.0,
                //   ),
                //   text: 'Cart',
                // ),
                Tab(
                  icon: Icon(
                    Icons.search,
                    size: 24.0,
                  ),
                  text: 'Profile',
                ),
                // Tab(
                //   icon: Icon(
                //     Icons.more,
                //     size: 24.0,
                //   ),
                //   text: 'More',
                // ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
