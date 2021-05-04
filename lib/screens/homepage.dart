import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:team_portfolio/profilecard/profilecardlayout.dart';
import 'package:team_portfolio/projectcardview/projectcardlayout.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:team_portfolio/screens/widgets/imagelist.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                    SizedBox(
                      width: 30,
                    )
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
              ProfileCardLayout(),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ColorizeAnimatedText('OUR WORKS',
                                textStyle: TextStyle(
                                    fontSize: 40, fontFamily: 'Horizon'),
                                colors: colorizeColors),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ProjectCardLayout(
                      projectName: "Tenthaind ",
                      images: ImageList().images,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ProjectCardLayout(
                      projectName: "TrafficMan ",
                      images: ImageList2().images,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ProjectCardLayout(
                      projectName: "Malabar Souq (E-Commerce)",
                      images: ImageList3().images,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ProjectCardLayout(
                      projectName: "Mini-Pos (Pos App)",
                      images: ImageList4().images,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                height: 200,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Contact us',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Mobile :- +91-9746450223',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Tirur \nMalappuram (d)\npin: 676109',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
