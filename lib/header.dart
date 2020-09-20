import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

class OffsetStateNotifier extends StateNotifier<double> {
  OffsetStateNotifier(state) : super(state);

  void setOffset(double offset) {
    this.state = offset;
  }

  double offset() {
    return state;
  }
}

class HeaderWidget extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            child: SvgPicture.asset("assets/icons/menu.svg", height: 15),
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 30),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: 20,
                  top: 20 - context.watch<double>() / 2,
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
                  top: context.watch<double>(),
                  width: 230,
                  child: SvgPicture.asset(
                    "assets/icons/Drcorona.svg",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Text("aiueo"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
