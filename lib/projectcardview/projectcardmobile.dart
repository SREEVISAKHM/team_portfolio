import 'package:flutter/material.dart';

class ProjectCardMobile extends StatelessWidget {
  final String projectName;
  final List<String> images;
  const ProjectCardMobile({Key key, this.projectName, this.images})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    projectName,
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          child: Card(
                            elevation: 5,
                            child: Image.asset('assets/images/playstore.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 70,
                          width: 100,
                          child: Card(
                            elevation: 5,
                            child: Image.asset('assets/images/appstore.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext ctx, int index) {
                return Column(
                  children: [
                    Container(
                      height: 500,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images[index]), fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                );
              },
              itemCount: images.length,
            ),
          ),
        ],
      ),
    );
  }
}
