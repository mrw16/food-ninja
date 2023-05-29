import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mylearn/pages/main_pages/main_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isObscure = true;
  bool isLoading = false;
  bool sendEmailVerification = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              child: Image.asset('assets/images/pattern.png'),
            ),
            Positioned(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.1)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Login To Your Account',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Material(
                      elevation: 25,
                      shadowColor: const Color(0xff5A6CEA).withOpacity(0.07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: const Color(0xff3B3B3B)),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff15BE77),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Email',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14, color: const Color(0xFF3B3B3B)),
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 20, 10, 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Material(
                      elevation: 25,
                      shadowColor: const Color(0xff5A6CEA).withOpacity(0.07),
                      child: TextFormField(
                        obscureText: isObscure,
                        controller: passwordController,
                        style: GoogleFonts.poppins(fontSize: 14),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xff15BE77),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(fontSize: 14),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                              });
                            },
                            icon: FaIcon(
                              isObscure
                                  ? FontAwesomeIcons.eyeSlash
                                  : FontAwesomeIcons.eye,
                              size: 15,
                              color: isObscure
                                  ? const Color(0xffF4F4F4)
                                  : const Color(0xff15BE77),
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(10, 20, 10, 20),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Or Continue With',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 25,
                            shadowColor:
                                const Color(0xff5A6CEA).withOpacity(0.07),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Facebook',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              width: 1,
                              color: Color(0xffF4F4F4),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            elevation: 25,
                            shadowColor:
                                const Color(0xff5A6CEA).withOpacity(0.07),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [Color(0xff53E88B), Color(0xff15BE77)],
                        ).createShader(bounds);
                      },
                      child: Text(
                        'Forgot Your Password?',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
