import 'package:flutter/material.dart';
import 'package:flutterinka/util/emoji_card.dart';
import 'package:flutterinka/widgets/navbar.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageEmail extends StatefulWidget {
  const PageEmail({super.key});

  @override
  State<PageEmail> createState() => _PageEmailState();
}

class _PageEmailState extends State<PageEmail> {

  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[800],
      // bottomNavigationBar: BottomNavigation(),
      body: Container(
        height: 1000,
        decoration: BoxDecoration(color: Colors.blue),
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                IconButton(
                icon : const Icon(Icons.arrow_back,size: 30,color: Colors.white,), onPressed: () {
                  Navigator.pop(context);
                 },
                ),
              ],
            ),
            // Profiles row
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(children: [
                 Center(
                   child: Column(
                     children: [
                      Row(children: [
                        Text('Ubah Kata Sandi',
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                        ),
                      ],),
                      const Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password Lama",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password Baru",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),

                          SizedBox(
                            height: 15,
                          ),
                     Container(
                       padding: EdgeInsets.all(15),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(15)
                         ),
                         child:
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                               'Simpan',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                               ),
                               ),
                           ],
                         ),
                      ),

                     ],
                   ),
                 ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}