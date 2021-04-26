import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:team_portfolio/screens/widgets/profile_card.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color(0xffffffff),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff707070)),
                        ),
                        child: Center(
                          child: Text(
                            'ABOUT',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              color: const Color(0xff707070),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'HI THERE !',
                  style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
                ),
                Text(
                  'meet our team ...',
                  style: TextStyle(fontSize: 40, fontFamily: 'Pacifico'),
                ),
                Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Lottie.asset('assets/lottie/coding.json'),
                  ),
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        ProfileCard(),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileCard(),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileCard(),
                        SizedBox(
                          width: 10,
                        ),
                        ProfileCard(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
