import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var editingController;
    return Scaffold(
      backgroundColor: Color(0xff172b4d),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 2),
        children: [
          const SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hello, Welcome back!",
                                      style: GoogleFonts.montserrat(
                                          color: const Color.fromARGB(
                                              255, 230, 230, 230),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    Text("Achmad Fairuz",
                                        style: GoogleFonts.montserrat(
                                            color: const Color.fromARGB(
                                                255, 230, 230, 230),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24)),
                                  ],
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://static.wikia.nocookie.net/jujutsu-kaisen/images/5/5a/Satoru_Gojo_arrives_on_the_battlefield_%28Anime%29.png/revision/latest?cb=20210226205256'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 20,
                      ),

                      // Search

                      Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: TextField(
                          controller: editingController,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              hintText: "Search",
                              hintStyle: TextStyle(fontSize: 12),
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)))),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
// Gambar Ranodm
                      Container(
                        child: Image.network(
                            'https://cinemags.org/wp-content/uploads/2023/04/Transformers-Rise-of-the-Beasts.jpg'),
                      ),
                      Container(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Now showing",
                              style: GoogleFonts.montserrat(
                                  color:
                                      const Color.fromARGB(255, 230, 230, 230),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Text(
                              'See more',
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 12,
                      ),

// Tabbar

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        height: 315,
                        child: DefaultTabController(
                          length: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ButtonsTabBar(
                                      unselectedLabelStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 230, 230, 230)),
                                      unselectedBackgroundColor:
                                          Color((0xff172b4d)),
                                      unselectedBorderColor:
                                          Color((0xff172b4d)),
                                      backgroundColor: Color((0xff172b4d)),
                                      borderColor:
                                          Color.fromARGB(255, 230, 230, 230),
                                      borderWidth: 2,
                                      tabs: [
                                        Tab(
                                          text: 'All Cinema',
                                        ),
                                        Tab(text: 'CGV'),
                                        Tab(text: ' XXI '),
                                        Tab(text: 'Cinepolis'),
                                      ],
                                    ),
                                    Container(
                                      height: 12,
                                    ),
// All Cinema

                                    Expanded(
                                      child: TabBarView(children: [
                                        Container(
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg'),
                                                    ),
                                                    Text(
                                                        'Spider-man-Across The SpiderVerse',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://upload.wikimedia.org/wikipedia/id/4/4f/Insidious_the_red_door.png'),
                                                    ),
                                                    Text(
                                                        'InsidiousThe Red Door',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://www.gamereactor.fr/media/67/characterpostersshow_4016743.jpg'),
                                                    ),
                                                    Text(
                                                        'Transformers-Rise Of The Beast',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 119,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://lumiere-a.akamaihd.net/v1/images/elemental-poster-id_8425eb19.jpeg?region=0%2C0%2C600%2C900'),
                                                    ),
                                                    Text(
                                                        'Elemental-Force Of Nature',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

// CGV

                                        Container(
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg'),
                                                    ),
                                                    Text(
                                                        'Spider-man-Across The SpiderVerse',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://upload.wikimedia.org/wikipedia/id/4/4f/Insidious_the_red_door.png'),
                                                    ),
                                                    Text(
                                                        'InsidiousThe Red Door',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://www.gamereactor.fr/media/67/characterpostersshow_4016743.jpg'),
                                                    ),
                                                    Text(
                                                        'Transformers-Rise Of The Beast',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 119,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://lumiere-a.akamaihd.net/v1/images/elemental-poster-id_8425eb19.jpeg?region=0%2C0%2C600%2C900'),
                                                    ),
                                                    Text(
                                                        'Elemental-Force Of Nature',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

// XXI

                                        Container(
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://m.media-amazon.com/images/M/MV5BMzI0NmVkMjEtYmY4MS00ZDMxLTlkZmEtMzU4MDQxYTMzMjU2XkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg'),
                                                    ),
                                                    Text(
                                                        'Spider-man-Across The SpiderVerse',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://www.gamereactor.fr/media/67/characterpostersshow_4016743.jpg'),
                                                    ),
                                                    Text(
                                                        'Transformers-Rise Of The Beast',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 119,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://lumiere-a.akamaihd.net/v1/images/elemental-poster-id_8425eb19.jpeg?region=0%2C0%2C600%2C900'),
                                                    ),
                                                    Text(
                                                        'Elemental-Force Of Nature',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

// Cinepolis

                                        Container(
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://upload.wikimedia.org/wikipedia/id/4/4f/Insidious_the_red_door.png'),
                                                    ),
                                                    Text(
                                                        'InsidiousThe Red Door',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 120,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://www.gamereactor.fr/media/67/characterpostersshow_4016743.jpg'),
                                                    ),
                                                    Text(
                                                        'Transformers-Rise Of The Beast',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 30,
                                              ),
                                              Container(
                                                width: 119,
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              .0),
                                                      child: Image.network(
                                                          'https://lumiere-a.akamaihd.net/v1/images/elemental-poster-id_8425eb19.jpeg?region=0%2C0%2C600%2C900'),
                                                    ),
                                                    Text(
                                                        'Elemental-Force Of Nature',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    230,
                                                                    230,
                                                                    230),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 12)),
                                                    TextButton(
                                                        style: TextButton
                                                            .styleFrom(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero),
                                                        onPressed: () {},
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  47,
                                                                  87,
                                                                  157),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3)),
                                                          child: Center(
                                                            child: Text("Open",
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
                                                                    fontSize:
                                                                        12)),
                                                          ),
                                                        ))
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

// Coming Soon

                      Container(
                        height: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Coming Soon",
                              style: GoogleFonts.montserrat(
                                  color:
                                      const Color.fromARGB(255, 230, 230, 230),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 12,
                      ),

// Film Comingsoon

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        height: 270,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 119,
                              child: Column(
                                children: [
                                  Container(
                                    height: 215,
                                    child: Column(
                                      children: [
                                        Image.network(
                                            'https://mblycksele.se/wp-content/uploads/2023/05/se_sweden_meg2_vert_main_2764x4096_intl-691x1024.jpg',
                                            width: 115),
                                        Container(
                                          height: 12,
                                        ),
                                        Text('The Meg II-Trench',
                                            style: GoogleFonts.montserrat(
                                                color: const Color.fromARGB(
                                                    255, 230, 230, 230),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      child: Container(
                                        width: double.infinity,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 47, 87, 157),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Center(
                                          child: Text("Open",
                                              style: GoogleFonts.montserrat(
                                                  color: const Color.fromARGB(
                                                      255, 230, 230, 230),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: 30,
                            ),
                            Container(
                              width: 119,
                              child: Column(
                                children: [
                                  Container(
                                    height: 215,
                                    child: Column(
                                      children: [
                                        Image.network(
                                            'https://upload.wikimedia.org/wikipedia/en/e/ea/Teenage_Mutant_Ninja_Turtles_-_Mutant_Mayhem.jpg',
                                            width: 115),
                                        Container(
                                          height: 12,
                                        ),
                                        Text('TMNT-Mutant Mayhem',
                                            style: GoogleFonts.montserrat(
                                                color: const Color.fromARGB(
                                                    255, 230, 230, 230),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      child: Container(
                                        width: double.infinity,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 47, 87, 157),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Center(
                                          child: Text("Open",
                                              style: GoogleFonts.montserrat(
                                                  color: const Color.fromARGB(
                                                      255, 230, 230, 230),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: 30,
                            ),
                            Container(
                              width: 119,
                              child: Column(
                                children: [
                                  Container(
                                    height: 215,
                                    child: Column(
                                      children: [
                                        Image.network(
                                          'https://radarjabar.disway.id/upload/37eec65a0201980891516fa2c2d6427e.jpg',
                                        ),
                                        Text(
                                            "Doraemon The Movie:Nobita's Sky Utopia",
                                            style: GoogleFonts.montserrat(
                                                color: const Color.fromARGB(
                                                    255, 230, 230, 230),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      child: Container(
                                        width: double.infinity,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 47, 87, 157),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Center(
                                          child: Text("Open",
                                              style: GoogleFonts.montserrat(
                                                  color: const Color.fromARGB(
                                                      255, 230, 230, 230),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              width: 30,
                            ),
                            Container(
                              width: 119,
                              child: Column(
                                children: [
                                  Container(
                                    height: 215,
                                    child: Column(
                                      children: [
                                        Image.network(
                                          'https://i.ebayimg.com/images/g/1EcAAOSwa-9klig5/s-l1600.jpg',
                                          width: 117,
                                        ),
                                        Container(
                                          height: 12,
                                        ),
                                        Text('Barbie',
                                            style: GoogleFonts.montserrat(
                                                color: const Color.fromARGB(
                                                    255, 230, 230, 230),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12))
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {},
                                      child: Container(
                                        width: double.infinity,
                                        height: 20,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 47, 87, 157),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                        child: Center(
                                          child: Text("Open",
                                              style: GoogleFonts.montserrat(
                                                  color: const Color.fromARGB(
                                                      255, 230, 230, 230),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

// Bottom Navbar
    );
  }
}
