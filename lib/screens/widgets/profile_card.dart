import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String jobdesignation;
  final String qualification;
  final String experiance;
  final String imagename;

  ProfileCard(
      {this.name,
      this.jobdesignation,
      this.qualification,
      this.experiance,
      this.imagename});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: 260.0,
            height: 330.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 53, left: 5, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    jobdesignation,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Qualification',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      qualification,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Experiance',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    experiance,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/github.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/linkedin.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/whatsapp.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: .0,
          left: .0,
          right: .0,
          child: Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/$imagename'),
            ),
          ),
        ),
      ],
    );
  }
}
