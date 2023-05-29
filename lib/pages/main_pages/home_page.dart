import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(25 / 360),
              child: Transform.translate(
                offset: const Offset(0, -480),
                child: Image.asset(
                  'assets/images/Pattern2.png',
                  width: double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Find Your Favorite Food',
                        style: GoogleFonts.poppins(
                          fontSize: 31,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: ShaderMask(
                        shaderCallback: (bounds) {
                          return const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff53E88B), Color(0xff15BE77)],
                          ).createShader(bounds);
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.bell,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: const Color(0xFFF9A84D),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const FaIcon(
                              FontAwesomeIcons.magnifyingGlass,
                              color: Color(0xffDA6317),
                              size: 20,
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  'What do you want to order?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xffDA6317),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF9A84D),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        color: const Color(0xFFDA6317),
                        onPressed: () {},
                        iconSize: 20,
                        icon: const FaIcon(
                          FontAwesomeIcons.sliders,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(25),
                child: Image.asset('assets/images/promo-advertising.png'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Nearest Restaurant',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View More',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xffFF7C32),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 25,
                  top: 10,
                  bottom: 20,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicHeight(
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => Container(
                          padding: const EdgeInsets.all(25),
                          margin: const EdgeInsets.only(
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/resturant-image.png',
                                width: 100,
                              ),
                              Text(
                                'Vegan Resto',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '12 Mins',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xffC0C0C0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Popular Menu',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View More',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: const Color(0xffFF7C32),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: List.generate(
                    5,
                    (index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/photo-menu.png',
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Green Noodle',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Noodle Home',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xffC0C0C0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              '\$15',
                              style: GoogleFonts.poppins(
                                fontSize: 22,
                                color: const Color(0xffFEAD1D),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
