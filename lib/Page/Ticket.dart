import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff172b4d),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: MediaQuery.of(context).size.height - 100,
              child: DefaultTabController(
                length: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ButtonsTabBar(
                            unselectedLabelStyle: const TextStyle(
                                color: Color.fromARGB(255, 230, 230, 230)),
                            unselectedBackgroundColor: Color((0xff172b4d)),
                            unselectedBorderColor: Color((0xff172b4d)),
                            backgroundColor: Color((0xff172b4d)),
                            borderColor: Color.fromARGB(255, 230, 230, 230),
                            borderWidth: 2,
                            tabs: [
                              Tab(
                                text: 'TICKET ACTIVE',
                              ),
                              Tab(text: 'WAITING FOR PAYMENT'),
                            ],
                          ),
                          Container(
                            height: 12,
                          ),

// Ticket Active

                          Expanded(
                            child: TabBarView(children: [
                              Container(
                                child: ListView(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            child: Row(
                                              children: [
                                                Image.network(
                                                  'https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg',
                                                ),
                                                Container(
                                                  width: 12,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          'Spider-man-Across The SpiderVerse',
                                                          style: GoogleFonts.montserrat(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  230,
                                                                  230,
                                                                  230),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 20)),
                                                      Container(
                                                        height: 2,
                                                      ),
                                                      Text('4 item',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12)),
                                                      Container(
                                                        height: 8,
                                                      ),
                                                      Text('C6,C7,C8,C9',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          75),
                                                                  fontSize:
                                                                      12)),
                                                      Container(
                                                        height: 14,
                                                      ),
                                                      Text(
                                                          'Cinepolis-Malang Town Square',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      11)),
                                                      Container(
                                                        height: 13,
                                                      ),
                                                      Container(
                                                        height: 30,
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                'Saturday,22-July-2023,18:45',
                                                                style: GoogleFonts.montserrat(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            75),
                                                                    fontSize:
                                                                        12)),
                                                            TextButton(
                                                                style: TextButton
                                                                    .styleFrom(
                                                                        padding:
                                                                            EdgeInsets
                                                                                .zero),
                                                                onPressed:
                                                                    () {},
                                                                child:
                                                                    Container(
                                                                  width: 75,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      color: const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          47,
                                                                          87,
                                                                          157),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3)),
                                                                  child: Center(
                                                                    child: Text(
                                                                        "Show QR Code",
                                                                        style: GoogleFonts.montserrat(
                                                                            color: const Color.fromARGB(
                                                                                255,
                                                                                230,
                                                                                230,
                                                                                230),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize: 8)),
                                                                  ),
                                                                ))
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 12,
                                    ),
                                    Container(
                                      height: 2,
                                      color: Color.fromRGBO(255, 255, 255, 75),
                                    )
                                  ],
                                ),
                              ),

// Waitiing Payment

                              Container(
                                child: ListView(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            child: Row(
                                              children: [
                                                Image.network(
                                                    'https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg'),
                                                Container(
                                                  width: 12,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          'Spider-man-Across The SpiderVerse',
                                                          style: GoogleFonts.montserrat(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  230,
                                                                  230,
                                                                  230),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 20)),
                                                      Container(
                                                        height: 2,
                                                      ),
                                                      Text('4 item',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12)),
                                                      Container(
                                                        height: 8,
                                                      ),
                                                      Text('C6,C7,C8,C9',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          75),
                                                                  fontSize:
                                                                      12)),
                                                      Container(
                                                        height: 14,
                                                      ),
                                                      Text(
                                                          'Cinepolis-Malang Town Square',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          255,
                                                                          255,
                                                                          255,
                                                                          75),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      11)),
                                                      Container(
                                                        height: 13,
                                                      ),
                                                      Container(
                                                        height: 30,
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                'Saturday,22-July-2023,18:45',
                                                                style: GoogleFonts.montserrat(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            75),
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 12,
                                          ),
                                          Container(
                                            height: 2,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 75),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
