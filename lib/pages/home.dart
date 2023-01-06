import 'package:flutter/material.dart';
// import 'package:flutterinka/util/emoji_card.dart';
//import 'package:flutterinka/widgets/navbar.dart';
// import 'package:percent_indicator/percent_indicator.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late String selected;

  final List<String> data = [
    "Container-1",
    "Container-2",
    "Container-3",
    "DST",
  ];

  final value_container = [
    "20",
    "40"
  ];

  //int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[800],
      //bottomNavigationBar: BottomNavigation(),
      body: Container(
        height: 1000,
        //decoration: BoxDecoration(color: Colors.blue),
        decoration: const BoxDecoration(color: Color(0xFF0D214F)),
        child: SafeArea(
          child: Column(children: [
            // Greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Helow, Vega Anggaresta',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),

                    //Notif
                      Container(
                        decoration:
                        BoxDecoration (
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: const EdgeInsets.all(12),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'profiles');
                          },
                          child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  // Select container
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15)
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownSearch<String>(
                              popupProps: const PopupProps.menu(
                                showSearchBox: true,
                                  showSelectedItems: true,
                                  //disabledItemFn: (String s) => s.startsWith('I'),
                              ),
                              items: data,
                              dropdownDecoratorProps: const DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    fillColor: Colors.white,
                                      labelText: "Select Container",
                                      hintText: "Select Container",
                                  ),
                              ),
                              onChanged: print,
                              //selectedItem: "Brazil",
                          ),
                        ),
                      ),
                    ],
                  ),

                        const SizedBox(
                          height: 15,
                        ),

                        // Kalimat Data Container
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
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

                  const SizedBox(
                    height: 15,
                  ),

                  // Box Data Container 4 Baris (Kiri->kanan)
                  Row(children: [
                    //Suhu Container
                    // Emoticonface(emoticonFace: '❄️',
                    // ),
                    Container(
                       padding: const EdgeInsets.all(12),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                       child:
                       Icon(FontAwesomeIcons.temperatureArrowUp,
                       color: Colors.blue[300],
                       )
                     ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
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
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                       padding: const EdgeInsets.all(12),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),
                       child:
                       Icon(FontAwesomeIcons.droplet,
                       color: Colors.blue[300],
                       )
                     ),
                     const SizedBox(
                      width: 10,
                     ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
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

              const SizedBox(
                height: 20,
              ),

              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
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
                              const SizedBox(
                                height: 5,
                              ),
                              // Icon(Icons.expand_more),
                              const Icon(FontAwesomeIcons.ellipsis),

                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Status AC Control',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              //list view card icon
                             // Status AC
                             Container(
                              padding: const EdgeInsets.all(15),
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
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          const Icon(FontAwesomeIcons.snowflake,
                                          color: Colors.white,
                                          )
                                          ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
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
                                    const Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),
                             const SizedBox(
                                height: 10 ,
                             ),
                             //Status humidity
                              Container(
                              padding: const EdgeInsets.all(15),
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
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          const Icon(FontAwesomeIcons.snowflake,
                                          color: Colors.white,
                                          )
                                          ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
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
                                    const Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),

                             //Status Condenser
                             const SizedBox(
                                height: 10 ,
                             ),
                             //Status humidity
                              Container(
                              padding: const EdgeInsets.all(15),
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
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          const Icon(FontAwesomeIcons.waterLadder,
                                          color: Colors.white,
                                          )
                                          ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
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
                                    const Icon(Icons.more_horiz_outlined),
                                  ],
                                ),
                             ),

                             //Status Heater
                             const SizedBox(
                                height: 10 ,
                             ),
                             //Status humidity
                              Container(
                              padding: const EdgeInsets.all(15),
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
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.amber,
                                          ),
                                          child:
                                          const Icon(FontAwesomeIcons.water,
                                          color: Colors.white,
                                          )
                                          ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: const [
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
                                    const Icon(Icons.more_horiz_outlined),
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
        ),
      ),
    );
  }
}