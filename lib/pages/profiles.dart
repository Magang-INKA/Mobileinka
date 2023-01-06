import 'package:flutter/material.dart';
//import 'package:flutterinka/pages/change_email.dart';
//import 'package:flutterinka/util/emoji_card.dart';
//import 'package:flutterinka/widgets/navbar.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  //final int _selectedItemIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue[800],
      // bottomNavigationBar: BottomNavigation(),
      body: Container(
        height: 1000,
        decoration: const BoxDecoration(color: Color(0xFF0D214F)),
        child: SafeArea(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                icon : const Icon(Icons.arrow_back,size: 30,color: Colors.white,), onPressed: () {
                  Navigator.pop(context);
                 },
                ),
              ],
            ),
            // Profiles row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
                          radius: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Vega Anggaresta',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Vegaangga27@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                        ),)
                        // Email
                      ],
                    ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Row(children: const [
                    Text('Ubah Data Akun',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                    ),
                  ],),
                  const Divider(
                        thickness: 2,
                        color: Colors.white,
                      ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                        onTap: (){
                        Navigator.pushNamed(context, 'changeEmail');
                      },
                    child: Container(
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
                          const Icon(Icons.email,
                              color: Colors.yellow,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              //Title
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],
                           ),
                          ],
                        ),
                        const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                GestureDetector(
                   onTap: (){
                        Navigator.pushNamed(context, 'changePhone');
                      },
                    child: Container(
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
                          const Icon(Icons.phone_android,
                              color: Colors.yellow,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              //Title
                              Text(
                                'Nomor HP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],
                           ),
                          ],
                        ),
                        const Icon(Icons.chevron_right_outlined),
                        ],
                      ),
                    ),
                  ),
                   const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                       onTap: (){
                        Navigator.pushNamed(context, 'changePassword');
                      },
                      child: Container(
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
                                 const Icon(FontAwesomeIcons.lock,
                                 color: Colors.yellow,
                                 ),
                                 const SizedBox(
                                   width: 15,
                                 ),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: const [
                                     //Title
                                     Text(
                                       'Kata Sandi',
                                       style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                       ),
                                       ),
                                   ],
                                 ),
                               ],
                             ),
                             const Icon(Icons.chevron_right),
                           ],
                         ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(children: const [
                      Text('Log Out',
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                      ),
                    ],),
                    const Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Logout
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
                               const Icon(FontAwesomeIcons.arrowRightFromBracket,
                               color: Colors.yellow,
                               ),
                               const SizedBox(
                                 width: 15,
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   //Title
                                   Text(
                                     'Logout',
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                     ),
                                     ),
                                 ],
                               ),
                             ],
                           ),
                           const Icon(Icons.chevron_right),
                         ],
                       ),
                    ),
                    const SizedBox(height: 50,),
                    const Text('Versi Aplikasi'),
                    const Text('1.0')

                ],
              ),
            ),

              const SizedBox(
                height: 10,
              ),
              Column(children: [
               Center(
                 child: Column(
                   children: const [
                                       ],
                 ),
               ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}