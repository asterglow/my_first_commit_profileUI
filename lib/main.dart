// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 25, 33, 37),
          body: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned(
                top: 220,
                // left: 40,
                child: Column(
                  children: [
                    Text(
                      'Aster Glow',
                      style: GoogleFonts.robotoMono(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'cybereincarnate@gmail.com',
                      style: GoogleFonts.robotoMono(
                        color: Color.fromARGB(255, 199, 199, 199),
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 45, width: 275,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 240, 90),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      // color: Colors.grey,
                      child: Text(
                        'Upgrade to Premium',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.robotoMono(
                          // backgroundColor: Colors.amber,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 168, 29, 19),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    
                    Ui_Item(
                        txt: '  Your search history',
                        arrow: true,
                        icontype: Icons.shopping_bag_outlined),
                    SizedBox(
                      height: 20,
                    ),
                    Ui_Item(
                        txt: '  Help and Support',
                        arrow: true,
                        icontype: Icons.help),
                    SizedBox(
                      height: 20,
                    ),
                    Ui_Item(
                        txt: 'Logout', arrow: false, icontype: Icons.logout),
                  ],
                ),
              ),
              Positioned(
                top: 70,
                left: 115,
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    'assets/images/JamesWebb_1.jpeg',
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 30,
                child: Icon(
                  Icons.arrow_back_sharp,
                  size: 30,
                  color: Colors.white70,
                ),
              ),
              Positioned(
                top: 40,
                right: 30,
                child: Icon(
                  Icons.settings,
                  color: Colors.white70,
                ),
              ),
            ],
          )),
    ),
  );
}

class Ui_Item extends StatelessWidget {
  Ui_Item({required this.txt, required this.arrow, required this.icontype});
  final String txt;
  final bool arrow;
  final IconData icontype;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      height: 45,
      width: 275,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icontype,
            size: 28,
            color: Colors.white,
            shadows: const [Shadow(blurRadius: 1)],
          ),
          SizedBox(
            width: 180,
            child: Text(
              '$txt',
              textAlign: TextAlign.start,
              style: GoogleFonts.robotoMono(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          arrow
              ? Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              : Container(),
        ],
      ),
    );
  }
}
