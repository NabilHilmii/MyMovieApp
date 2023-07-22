import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff172b4d),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(12),
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            child: Text('Transaction History',
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    fontWeight: FontWeight.w600,
                    fontSize: 20)),
          ),
          Container(
            height: 12,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 160,
                  child: Row(
                    children: [
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/id/4/4f/Insidious_the_red_door.png',
                      ),
                      Container(
                        width: 12,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('InsidiousThe Red Door',
                                style: GoogleFonts.montserrat(
                                    color: const Color.fromARGB(
                                        255, 230, 230, 230),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20)),
                            Container(
                              height: 2,
                            ),
                            Text('4 item',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(255, 255, 255, 75),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12)),
                            Container(
                              height: 8,
                            ),
                            Text('C6,C7,C8,C9',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(255, 255, 255, 75),
                                    fontSize: 12)),
                            Container(
                              height: 14,
                            ),
                            Text('Cinepolis-Malang Town Square',
                                style: GoogleFonts.montserrat(
                                    color: Color.fromRGBO(255, 255, 255, 75),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11)),
                            Container(
                              height: 13,
                            ),
                            Container(
                              height: 30,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Saturday,22-July-2023,18:45',
                                      style: GoogleFonts.montserrat(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 75),
                                          fontSize: 12)),
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
      )),
    );
  }
}
