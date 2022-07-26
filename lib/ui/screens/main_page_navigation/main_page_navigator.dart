import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

import '../../shared/constants.dart';
import '../home/home.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key, int? navigationBarIndex})
      : _navigationBarIndex = navigationBarIndex,
        super(key: key);
  static const String id = "main page route";

  int? _navigationBarIndex;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavBarIndex = 0;
  void newIndex(int index) {
    setState(() {
      widget._navigationBarIndex == null
          ? bottomNavBarIndex = index
          : widget._navigationBarIndex = index;
      bottomNavBarIndex = index;
    });
  }

  List<Widget> pageData = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.white,
        ),
        child: SizedBox(
          height: 90,
          child: BottomNavigationBar(
            elevation: 10,
            type: BottomNavigationBarType.shifting,
            currentIndex: widget._navigationBarIndex == null
                ? bottomNavBarIndex
                : widget._navigationBarIndex!,
            onTap: newIndex,
            selectedItemColor: primaryColor,
            unselectedItemColor: const Color(0xFF6B7280),
            selectedLabelStyle: GoogleFonts.manrope(
              textStyle: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                height: 16.39 / 12,
                color: primaryColor,
              ),
            ),
            unselectedLabelStyle: GoogleFonts.manrope(
              textStyle: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                height: 16.39 / 12,
              ),
            ),
            items: [
              BottomNavigationBarItem(
                  icon:
                      widget._navigationBarIndex == 0 || bottomNavBarIndex == 0
                          ? const Icon(IconlyBold.home)
                          : const Icon(Iconsax.home),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon:
                      widget._navigationBarIndex == 1 || bottomNavBarIndex == 1
                          ? const Icon(Iconsax.document_text_15)
                          : const Icon(Iconsax.document_text),
                  label: "Records"),
              BottomNavigationBarItem(
                  icon:
                      widget._navigationBarIndex == 2 || bottomNavBarIndex == 2
                          ? const Icon(Iconsax.hospital5)
                          : const Icon(Iconsax.hospital),
                  label: "Labs"),
              BottomNavigationBarItem(
                  icon:
                      widget._navigationBarIndex == 3 || bottomNavBarIndex == 3
                          ? const Icon(Icons.health_and_safety)
                          : const Icon(Icons.health_and_safety_outlined),
                  label: "Tests"),
              BottomNavigationBarItem(
                  icon:
                      widget._navigationBarIndex == 4 || bottomNavBarIndex == 4
                          ? const Icon(Iconsax.health5)
                          : const Icon(Iconsax.health),
                  label: "Avera Profile"),
            ],
          ),
        ),
      ),
      // appBar: appBars.elementAt(bottomNavBarIndex),
      body: IndexedStack(
        index: widget._navigationBarIndex == null
            ? bottomNavBarIndex
            : widget._navigationBarIndex!,
        children: pageData,
      ),
    );
  }
}
