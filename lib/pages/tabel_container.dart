import 'package:flutter/material.dart';
import 'package:flutterinka/util/emoji_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [

            // Greetings row
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
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Tanggal Hari ini',
                        style: TextStyle(
                          color: Colors.blue[100]
                        ),
                    )
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
                    Icons.notifications,
                    color: Colors.white,
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 25,
              ),
              // Search Bar
              Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(12)
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),

                    SizedBox(
                      height: 25,
                    ),

                    // Kalimat Data Container
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Data Container',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
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
                height: 25,
              ),

              // Box Data Container 4 Baris (Kiri->kanan)
              Column(
                children: [
                  Row(children: [
                    //Suhu Container
                    Emoticonface(emoticonFace: '📝',
                    ),
                    SizedBox(
                      width: 8,
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
                          '20 C',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],),
                     SizedBox(
                      height: 10,
                    ),
                  Row(children: [
                    //Suhu Container
                    Emoticonface(emoticonFace: '📝',
                    ),
                    SizedBox(
                      width: 8,
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
                          '20 C',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],),
                     SizedBox(
                      height: 10,
                    ),
                  Row(children: [
                    //Suhu Container
                    Emoticonface(emoticonFace: '📝',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status Door',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '20 C',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],),
                     SizedBox(
                      height: 10,
                    ),
                  Row(children: [
                    //Suhu Container
                    Emoticonface(emoticonFace: '📝',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Suhu Container',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '20 C',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}