import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mylearn/pages/sign_in_page.dart';

class IntroductionScreenPage extends StatefulWidget {
  const IntroductionScreenPage({super.key});

  @override
  State<IntroductionScreenPage> createState() => _IntroductionScreenPageState();
}

class _IntroductionScreenPageState extends State<IntroductionScreenPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          titleWidget: Text(
            'Find your Comfort Food here',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Here You Can find a chef or dish for every taste and color. Enjoy!',
            style: GoogleFonts.poppins(),
            textAlign: TextAlign.center,
          ),
          image: Image.asset('assets/images/Illustartion.png'),
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.symmetric(horizontal: 50),
            bodyPadding: EdgeInsets.symmetric(horizontal: 50),
          ),
        ),
        PageViewModel(
          titleWidget: Text(
            'Food Ninja is Where Your Comfort Food Lives',
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          bodyWidget: Text(
            'Enjoy a fast and smooth food delivery at your doorstep',
            style: GoogleFonts.poppins(),
            textAlign: TextAlign.center,
          ),
          image: Image.asset('assets/images/Illustration2.png'),
          decoration: const PageDecoration(
            titlePadding: EdgeInsets.symmetric(horizontal: 40),
            bodyPadding: EdgeInsets.symmetric(horizontal: 40),
          ),
        ),
      ],
      globalFooter: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 50,
        margin: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff53E88B), Color(0xff15BE77)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            if (introKey.currentState!.getCurrentPageNumber() + 1 ==
                introKey.currentState!.getPagesLength()) {
              Future.delayed(
                Duration.zero,
                () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
              );
            } else {
              introKey.currentState?.next();
            }
          },
          child: Text(
            'Next',
            style: GoogleFonts.poppins(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      showNextButton: false,
      showBackButton: false,
      showDoneButton: false,
      showSkipButton: false,
      isTopSafeArea: true,
      isProgress: false,
    );
  }
}
