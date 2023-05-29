import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mylearn/pages/main_pages/cart_page.dart';
import 'package:mylearn/pages/main_pages/chat_page.dart';
import 'package:mylearn/pages/main_pages/home_page.dart';
import 'package:mylearn/pages/main_pages/user_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> buildScreens() {
      return const [
        HomePage(),
        UserPage(),
        CartPage(),
        ChatPage(),
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff53E88B), Color(0xff15BE77)],
              ).createShader(bounds);
            },
            child: const FaIcon(
              FontAwesomeIcons.house,
              color: Colors.white,
            ),
          ),
          title: ('Home'),
          iconSize: 24,
          activeColorPrimary: Colors.black,
          textStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff53E88B), Color(0xff15BE77)],
              ).createShader(bounds);
            },
            child: const FaIcon(
              FontAwesomeIcons.solidUser,
              color: Colors.white,
            ),
          ),
          title: ('User'),
          iconSize: 24,
          activeColorPrimary: Colors.black,
          textStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff53E88B), Color(0xff15BE77)],
              ).createShader(bounds);
            },
            child: const FaIcon(
              FontAwesomeIcons.cartShopping,
              color: Colors.white,
            ),
          ),
          title: ('Cart'),
          iconSize: 24,
          activeColorPrimary: Colors.black,
          textStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        PersistentBottomNavBarItem(
          icon: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff53E88B), Color(0xff15BE77)],
              ).createShader(bounds);
            },
            child: const FaIcon(
              FontAwesomeIcons.solidCommentDots,
              color: Colors.white,
            ),
          ),
          title: ('Chat'),
          iconSize: 24,
          activeColorPrimary: Colors.black,
          textStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: buildScreens(),
      items: navBarsItems(),
      bottomScreenMargin: 0,
      navBarHeight: MediaQuery.of(context).size.height * 0.1,
      margin: const EdgeInsets.all(10),
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, 
    );
  }
}
