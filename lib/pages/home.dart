import 'package:flutter/material.dart';
import 'package:flutterinka/util/emoji_card.dart';
<<<<<<< HEAD
import 'package:flutterinka/widgets/navbar.dart';
=======
>>>>>>> 3f8ccf17fb22f4ca2b5dbc113da6993c05af1fe2
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD

  int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[800],

      bottomNavigationBar: BottomNavigation(),

      body: Container(
        height: 1000,
        decoration: BoxDecoration(color: Colors.blue),
        child: SafeArea(
          child: Column(children: [
            // Greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Helow, User',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   height: 8,
                          // ),
                        //   Text(
                        //     'Tanggal Hari ini',
                        //     style: TextStyle(
                        //       color: Colors.blue[100]
                        //     ),
                        // )
                      ],
                    ),

                    //Notif
                      Container(
                        decoration:
                        BoxDecoration (
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  // Search Bar
                  Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        'Select Container',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ]),
                  ),
                        SizedBox(
                          height: 15,
                        ),

                        // Kalimat Data Container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Monitoring Container',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                      Icon (
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  // Box Data Container 4 Baris (Kiri->kanan)
                  Row(children: [
                    //Suhu Container
                    // Emoticonface(emoticonFace: '❄️',
                    // ),
                    Container(
                       padding: EdgeInsets.all(12),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                       child:
                       Icon(FontAwesomeIcons.temperatureArrowUp,
                       color: Colors.blue[300],
                       )
                     ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Temperature',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '1000',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                         )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                       padding: EdgeInsets.all(12),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                       child:
                       Icon(FontAwesomeIcons.droplet,
                       color: Colors.blue[300],
                       )
                     ),
                     SizedBox(
                      width: 10,
                     ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Humidity',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '10%',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                         )
                        ],
                      ),

                    ],
                  ),


                ],
              ),
            ),

              SizedBox(
                height: 20,
              ),

              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)
                        ),
                  child: Container(
                    color: Colors.grey[200],
                     child:Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25.0),
                       child: Column(children: [
                        Center(
                          child: Column(
                            children: [
                              // Icon(Icons.expand_less_outlined),
                              SizedBox(
                                height: 5,
                              ),
                              // Icon(Icons.expand_more),
                              Icon(FontAwesomeIcons.ellipsis),

                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Status AC Control',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //list view card icon
                             // Status AC
                             Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                                ),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          Icon(FontAwesomeIcons.snowflake,
                                          color: Colors.white,
                                          )
                                          ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //Title
                                            Text(
                                              'Status Evaporator',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                            //sub title
                                            Text('On')
                                          ],
                                        ),

                                      ],
                                    ),
                                    Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),
                             SizedBox(
                                height: 10 ,
                             ),
                             //Status humidity
                              Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                                ),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          Icon(FontAwesomeIcons.snowflake,
                                          color: Colors.white,
                                          )
                                          ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //Title
                                            Text(
                                              'Status Condenser',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                            //sub title
                                            Text('Off')
                                          ],
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),

                             //Status Condenser
                             SizedBox(
                                height: 10 ,
                             ),
                             //Status humidity
                              Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                                ),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          Icon(FontAwesomeIcons.waterLadder,
                                          color: Colors.white,
                                          )
                                          ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //Title
                                            Text(
                                              'Status Compressor',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                            //sub title
                                            Text('Off')
                                          ],
                                        ),

                                      ],
                                    ),
                                    Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),

                             //Status Heater
                             SizedBox(
                                height: 10 ,
                             ),
                             //Status humidity
                              Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                                ),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          Icon(FontAwesomeIcons.water,
                                          color: Colors.white,
                                          )
                                          ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //Title
                                            Text(
                                              'Status Heater',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                            //sub title
                                            Text('Off')
                                          ],
                                        ),

                                      ],
                                    ),
                                    Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),

                            ],
                          ),
                        ),
                    ]),
                     ),
                    // decoration: BoxDecoration(
                    //   // color: Colors.white,
                    //
                    // child: Center(
                    // ),
                  ),
                ),
              ),
            ],
          ),
=======
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        // BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code_2_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.table_view_outlined), label: ''),
        ]
      ),
      body: SafeArea(
        child: Column(children: [
          // Greetings row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Helow, User',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        // SizedBox(
                        //   height: 8,
                        // ),
                      //   Text(
                      //     'Tanggal Hari ini',
                      //     style: TextStyle(
                      //       color: Colors.blue[100]
                      //     ),
                      // )
                    ],
                  ),

                  //Notif
                    Container(
                      decoration:
                      BoxDecoration (
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 15,
                ),
                // Search Bar
                Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                      'Select Container',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ]),
                ),
                      SizedBox(
                        height: 15,
                      ),

                      // Kalimat Data Container
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Monitoring Container',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                    Icon (
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                // Percent Indicator
                Row(
                  children: [
              //       new CircularPercentIndicator(
              //       radius: 50.0,
              //       lineWidth: 15.0,
              //       animation: true,
              //       percent: 0.7,
              //       center: new Text(
              //         "70.0%",
              //         style:
              //             new TextStyle(
              //               color: Colors.white,
              //               fontWeight: FontWeight.bold,
              //               fontSize: 20.0),
              //       ),
              //       // header: new Text(
              //       //   "Capacity",
              //       //   style:
              //       //       new TextStyle(
              //       //       color: Colors.white,
              //       //       fontWeight: FontWeight.bold,
              //       //       fontSize: 17.0),
              //       // ),
              //       circularStrokeCap: CircularStrokeCap.round,
              //       progressColor: Colors.amber,
              // ),

                    Column(
                      children: [
                        // Status AC Control

                        /// Evaporator
                    //   Container(
                    //     decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(12)
                    //   ),
                    //   padding: EdgeInsets.all(12),
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         children: [
                    //            Column(
                    //              children: [
                    //                Text(
                    //                'Evaporator: Off',
                    //                style: TextStyle(color: Colors.blue[600]),
                    //                ),
                    //              ],
                    //            ),
                    //           // Icon(FontAwesomeIcons.hospital),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    //Condenser

                   ],
                    ),
                  ],
                ),

                // Box Data Container 4 Baris (Kiri->kanan)
                Row(children: [
                  //Suhu Container
                  // Emoticonface(emoticonFace: '❄️',
                  // ),
                  Container(
                     padding: EdgeInsets.all(12),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white,
                     ),
                     child:
                     Icon(FontAwesomeIcons.temperatureArrowUp,
                     color: Colors.blue[300],
                     )
                   ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Temperature',
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1000',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                       )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                     padding: EdgeInsets.all(12),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.white,
                     ),
                     child:
                     Icon(FontAwesomeIcons.droplet,
                     color: Colors.blue[300],
                     )
                   ),
                   SizedBox(
                    width: 10,
                   ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Humidity',
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '10%',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                       )
                      ],
                    ),

                  ],
                ),


              ],
            ),
          ),

            SizedBox(
              height: 20,
            ),

            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                      ),
                child: Container(
                  color: Colors.grey[200],
                   child:Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                     child: Column(children: [
                      Center(
                        child: Column(
                          children: [
                            // Icon(Icons.expand_less_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            // Icon(Icons.expand_more),
                            Icon(FontAwesomeIcons.ellipsis),

                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Status AC Control',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            //list view card icon
                           // Status AC
                           Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.amber,
                                        ),
                                        child:
                                        Icon(FontAwesomeIcons.snowflake,
                                        color: Colors.white,
                                        )
                                        ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //Title
                                          Text(
                                            'Status Evaporator',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          //sub title
                                          Text('On')
                                        ],
                                      ),

                                    ],
                                  ),
                                  Icon(Icons.more_horiz_outlined),
                                ],
                              ),
                           ),
                           SizedBox(
                              height: 10 ,
                           ),
                           //Status humidity
                            Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.amber,
                                        ),
                                        child:
                                        Icon(FontAwesomeIcons.snowflake,
                                        color: Colors.white,
                                        )
                                        ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //Title
                                          Text(
                                            'Status Condenser',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          //sub title
                                          Text('Off')
                                        ],
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.more_horiz_outlined),
                                ],
                              ),
                           ),

                           //Status Condenser
                           SizedBox(
                              height: 10 ,
                           ),
                           //Status humidity
                            Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.amber,
                                        ),
                                        child:
                                        Icon(FontAwesomeIcons.waterLadder,
                                        color: Colors.white,
                                        )
                                        ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //Title
                                          Text(
                                            'Status Compressor',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          //sub title
                                          Text('Off')
                                        ],
                                      ),

                                    ],
                                  ),
                                  Icon(Icons.more_horiz_outlined),
                                ],
                              ),
                           ),

                           //Status Heater
                           SizedBox(
                              height: 10 ,
                           ),
                           //Status humidity
                            Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.amber,
                                        ),
                                        child:
                                        Icon(FontAwesomeIcons.water,
                                        color: Colors.white,
                                        )
                                        ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          //Title
                                          Text(
                                            'Status Heater',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                            ),
                                          //sub title
                                          Text('Off')
                                        ],
                                      ),

                                    ],
                                  ),
                                  Icon(Icons.more_horiz_outlined),
                                ],
                              ),
                           ),

                          ],
                        ),
                      ),
                  ]),
                   ),
                  // decoration: BoxDecoration(
                  //   // color: Colors.white,
                  //
                  // child: Center(
                  // ),
                ),
              ),
            ),
          ],
>>>>>>> 3f8ccf17fb22f4ca2b5dbc113da6993c05af1fe2
        ),
      ),
    );
  }
}