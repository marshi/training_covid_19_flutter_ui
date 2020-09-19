import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      padding: EdgeInsets.only(top: 50, right: 30, left: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.indigo,
            Colors.blueAccent,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        image: DecorationImage(image: AssetImage("assets/images/virus.png")),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset("assets/icons/menu.svg", height: 15),
          SizedBox(height: 30),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  top: 10,
                  child: Text(
                    "All you need \nis stay at home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
                Positioned(
                  width: 230,
                  child: SvgPicture.asset(
                    "assets/icons/Drcorona.svg",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
