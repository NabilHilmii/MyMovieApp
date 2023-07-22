import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stopper/stopper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtf_project/Page/HomePage.dart';
import 'package:mtf_project/Page/navBar.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 43, 77),
      body: SingleChildScrollView(
        child: Builder(
          builder: (context) {
            final h = MediaQuery.of(context).size.height;
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_FMjpg_UX1000_.jpg"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // SIGN IN

                  Container(
                    color: Color.fromARGB(255, 23, 43, 77),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 230, 230, 230)),
                      ),
                      child: Text("Sign In",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      onPressed: () {
                        showStopper(
                          context: context,
                          stops: [0.4 * h, h],
                          builder:
                              (context, scrollController, scrollPhysics, stop) {
                            return ClipRRect(
                              borderRadius: stop == 0
                                  ? const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )
                                  : const BorderRadius.only(),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                color: const Color.fromARGB(255, 23, 43, 77),
                                child: CustomScrollView(
                                  slivers: <Widget>[
                                    const SliverAppBar(
                                      centerTitle: true,
                                      title: Text("Sign In"),
                                      backgroundColor:
                                          Color.fromARGB(255, 23, 43, 77),
                                      automaticallyImplyLeading: false,
                                      primary: false,
                                      floating: true,
                                      pinned: true,
                                    ),
                                    SliverList(
                                      delegate: SliverChildBuilderDelegate(
                                        (context, idx) => Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                textAlign: TextAlign.center,
                                                controller: emailController,
                                                decoration: const InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText:
                                                        "Email/Phone Number",
                                                    filled: true,
                                                    fillColor: Color.fromARGB(
                                                        255, 217, 217, 217)),
                                              ),
                                              Container(
                                                height: 12,
                                              ),
                                              TextFormField(
                                                textAlign: TextAlign.center,
                                                obscureText: true,
                                                controller: passwordController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: "Password",
                                                        filled: true,
                                                        fillColor:
                                                            Color.fromARGB(255,
                                                                217, 217, 217),
                                                        suffixIcon: Icon(Icons
                                                            .remove_red_eye)),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              SizedBox(
                                                width: double.infinity,
                                                height: 48,
                                                child: ElevatedButton(
                                                    style: const ButtonStyle(
                                                      side:
                                                          MaterialStatePropertyAll(
                                                              BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          230,
                                                                          230,
                                                                          230))),
                                                      backgroundColor:
                                                          MaterialStatePropertyAll(
                                                        Color.fromARGB(
                                                            255, 23, 43, 77),
                                                      ),
                                                    ),
                                                    child: Text("Sign In",
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
                                                                fontSize: 16)),
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  BottomNavBar()));
                                                    }),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              const Text("Forgot Password?",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 217, 217, 217))),
                                            ],
                                          ),
                                        ),
                                        childCount: 1,
                                      ),
                                    )
                                  ],
                                  controller: scrollController,
                                  physics: scrollPhysics,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  // SIGN UP

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 230, 230, 230)),
                      ),
                      child: Text("Sign Up",
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      onPressed: () {
                        showStopper(
                          context: context,
                          stops: [0.4 * h, h],
                          builder:
                              (context, scrollController, scrollPhysics, stop) {
                            return ClipRRect(
                              borderRadius: stop == 0
                                  ? const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    )
                                  : const BorderRadius.only(),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                color: const Color.fromARGB(255, 23, 43, 77),
                                child: CustomScrollView(
                                  slivers: <Widget>[
                                    const SliverAppBar(
                                      centerTitle: true,
                                      title: Text("Sign Up"),
                                      backgroundColor:
                                          Color.fromARGB(255, 23, 43, 77),
                                      automaticallyImplyLeading: false,
                                      primary: false,
                                      floating: true,
                                      pinned: true,
                                    ),
                                    SliverList(
                                      delegate: SliverChildBuilderDelegate(
                                        (context, idx) => Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                textAlign: TextAlign.center,
                                                controller: emailController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: "Name",
                                                        filled: true,
                                                        fillColor:
                                                            Color.fromARGB(255,
                                                                217, 217, 217)),
                                              ),
                                              Container(
                                                height: 12,
                                              ),
                                              TextFormField(
                                                textAlign: TextAlign.center,
                                                controller: passwordController,
                                                decoration: const InputDecoration(
                                                    border:
                                                        OutlineInputBorder(),
                                                    hintText:
                                                        "Email/Phone Number",
                                                    filled: true,
                                                    fillColor: Color.fromARGB(
                                                        255, 217, 217, 217)),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              TextFormField(
                                                textAlign: TextAlign.center,
                                                obscureText: true,
                                                controller: passwordController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: "Password",
                                                        filled: true,
                                                        fillColor:
                                                            Color.fromARGB(255,
                                                                217, 217, 217)),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              TextFormField(
                                                textAlign: TextAlign.center,
                                                obscureText: true,
                                                controller: passwordController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText:
                                                            "Confirm Password",
                                                        filled: true,
                                                        fillColor:
                                                            Color.fromARGB(255,
                                                                217, 217, 217)),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Term And Condition",
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              217,
                                                              217,
                                                              217)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                height: 48,
                                                child: ElevatedButton(
                                                  style: const ButtonStyle(
                                                    side:
                                                        MaterialStatePropertyAll(
                                                            BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        230,
                                                                        230,
                                                                        230))),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll(
                                                      Color.fromARGB(
                                                          255, 23, 43, 77),
                                                    ),
                                                  ),
                                                  child: Text("Sign Up",
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
                                                              fontSize: 16)),
                                                  onPressed: () {},
                                                ),
                                              ),

                                              //  SIGN IN SAAT DI SIGN UP
                                            ],
                                          ),
                                        ),
                                        childCount: 1,
                                      ),
                                    )
                                  ],
                                  controller: scrollController,
                                  physics: scrollPhysics,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
