import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff172b4d),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          size: 50,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                  ),
                  Container(
                    width: double.infinity,
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://static.wikia.nocookie.net/jujutsu-kaisen/images/5/5a/Satoru_Gojo_arrives_on_the_battlefield_%28Anime%29.png/revision/latest?cb=20210226205256'),
                                  radius: 60,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: 120,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.blue[900],
                                              child: Icon(
                                                  Icons.camera_alt_outlined),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person_2_rounded,
                            color: Colors.white60,
                            size: 30,
                          ),
                          Container(
                            width: 12,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 82,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Name',
                                      style: GoogleFonts.montserrat(
                                          color: const Color.fromARGB(
                                              150, 230, 230, 230),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      'Achmad Fairuz',
                                      style: GoogleFonts.montserrat(
                                        color: const Color.fromARGB(
                                            255, 230, 230, 230),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.edit,
                                  color: Colors.white60,
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    height: 1,
                    color: Colors.black,
                  ),
                  Container(
                    height: 12,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person_2_rounded,
                            color: Colors.white60,
                            size: 30,
                          ),
                          Container(
                            width: 12,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 82,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Phone Number',
                                      style: GoogleFonts.montserrat(
                                          color: const Color.fromARGB(
                                              150, 230, 230, 230),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      '+62 1234 5678',
                                      style: GoogleFonts.montserrat(
                                        color: const Color.fromARGB(
                                            255, 230, 230, 230),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.edit,
                                  color: Colors.white60,
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    height: 1,
                    color: Colors.black,
                  ),
                  Container(
                    height: 278,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Remove Account',
                            style: GoogleFonts.montserrat(
                                color: const Color.fromARGB(255, 230, 230, 230),
                                fontWeight: FontWeight.w600)),
                        Container(
                          height: 12,
                        ),
                        Container(
                          width: 500,
                          child: ElevatedButton(
                            onPressed: () {
                              exit(0);
                            },
                            child: Text(
                              'Log Out',
                              style: GoogleFonts.montserrat(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600),
                            ),
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 230, 230, 230)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
