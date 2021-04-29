import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/widgets/imagelist.dart';

class ProjectCard extends StatelessWidget {
  final String projectName;
  const ProjectCard({Key key, this.projectName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = ImageList().images;
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 100,
          ),
          Container(
            child: Column(
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
          SizedBox(
            width: 200,
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 510,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext ctx, int index) {
                return Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images[index]), fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 10,
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
