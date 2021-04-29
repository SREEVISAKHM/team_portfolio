import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:team_portfolio/screens/widgets/profile_card.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:team_portfolio/screens/widgets/projectcard.dart';

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
              Container(
                height: 400,
                width: double.infinity,
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProfileCard(
                        name: 'SREEVISAKH.M',
                        jobdesignation: 'Flutter developer',
                        qualification:
                            'B Tech in Electronics and communication',
                        experiance: 'Currently working as a freelancer ',
                        imagename: 'sreevisakh.jpg',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ProfileCard(
                        name: 'VAISAKH.P',
                        jobdesignation: 'Developer',
                        qualification: 'Degree',
                        experiance:
                            'Currently working as a developer in Techgebra LLP, and freelancer',
                        imagename: 'vaisakh.jpeg',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ProfileCard(
                        name: 'RIBINSHAD',
                        jobdesignation: 'Flutter Developer',
                        qualification: 'Bsc computer science',
                        experiance:
                            'Currently working as flutter developer at Techgebra LLP',
                        imagename: 'ribin.jpeg',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ProfileCard(
                        name: 'AFEEFA',
                        jobdesignation: 'Flutter Developer',
                        qualification: 'MCA',
                        experiance:
                            'Currently working as flutter developer at Techgebra LLP',
                        imagename: 'user.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 520,
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
                    ProjectCard(
                      projectName: 'Project Name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ProjectCard(
                      projectName: 'Project Name',
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
