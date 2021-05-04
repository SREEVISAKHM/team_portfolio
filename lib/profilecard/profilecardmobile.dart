import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/widgets/profile_card.dart';

class ProfileCardMobile extends StatelessWidget {
  const ProfileCardMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            ProfileCard(
              name: 'SREEVISAKH.M',
              jobdesignation: 'Flutter developer',
              qualification: 'B Tech in Electronics and communication',
              experiance: 'Currently working as a freelancer ',
              imagename: 'sreevisakh.jpg',
              whatsappurl: 'https://wa.me/qr/RVE6XQZFKEBIF1',
              githuburl: "https://github.com/SREEVISAKHM",
              linkedinurl: 'https://www.linkedin.com/in/sree-visakh-28a8b8156/',
            ),
            SizedBox(
              height: 20,
            ),
            ProfileCard(
              name: 'VAISAKH.P',
              jobdesignation: 'Developer',
              qualification: 'Degree',
              experiance:
                  'Currently working as a developer in Techgebra LLP, and freelancer',
              imagename: 'vaisakh.jpeg',
              whatsappurl: 'https://wa.me/qr/RVE6XQZFKEBIF1',
              githuburl: "https://github.com/SREEVISAKHM",
              linkedinurl: 'https://www.linkedin.com/in/sree-visakh-28a8b8156/',
            ),
            SizedBox(
              height: 20,
            ),
            ProfileCard(
              name: 'RIBINSHAD',
              jobdesignation: 'Flutter Developer',
              qualification: 'Bsc computer science',
              experiance:
                  'Currently working as flutter developer at Techgebra LLP',
              imagename: 'ribin.jpeg',
              whatsappurl: 'https://wa.me/qr/RVE6XQZFKEBIF1',
              githuburl: "https://github.com/SREEVISAKHM",
              linkedinurl: 'https://www.linkedin.com/in/sree-visakh-28a8b8156/',
            ),
            SizedBox(
              height: 20,
            ),
            ProfileCard(
              name: 'AFEEFA',
              jobdesignation: 'Flutter Developer',
              qualification: 'MCA',
              experiance:
                  'Currently working as flutter developer at Techgebra LLP',
              imagename: 'user.jpg',
              whatsappurl: 'https://wa.me/qr/RVE6XQZFKEBIF1',
              githuburl: "https://github.com/SREEVISAKHM",
              linkedinurl: 'https://www.linkedin.com/in/sree-visakh-28a8b8156/',
            ),
          ],
        ),
      ),
    );
  }
}
