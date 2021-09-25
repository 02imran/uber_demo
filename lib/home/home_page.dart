import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uber_clone/home/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ProfileScreen()));
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: SvgPicture.asset(
                          'assets/svg/user.svg',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF0C3C29),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 10),
                        child: Text(
                          'Get Out And About',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            Text(
                              'Ride with Uber',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RidePakageRantalIntercity(
                      icon: 'assets/svg/car.svg',
                      text: 'Ride',
                    ),
                    RidePakageRantalIntercity(
                      icon: 'assets/svg/box.svg',
                      text: 'Pakage',
                    ),
                    RidePakageRantalIntercity(
                      icon: 'assets/svg/car.svg',
                      text: 'Rantal',
                    ),
                    RidePakageRantalIntercity(
                      icon: 'assets/svg/car.svg',
                      text: 'Intercity',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEFEF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Where to?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          VerticalDivider(),
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  size: 20,
                                ),
                                Text('Now'),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                PresentLocation(),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 10),
                PresentLocation(),
                SizedBox(height: 30),
                Text(
                  'Around you',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/uber.jpg',
                    fit: BoxFit.fitWidth,
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

class PresentLocation extends StatelessWidget {
  const PresentLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration:
              BoxDecoration(color: Color(0xFFEEEFEF), shape: BoxShape.circle),
          child: Icon(Icons.pin_drop),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'West Rajabazar, Dhaka',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('West Rajabazar, Dhaka')
          ],
        ),
        SizedBox(width: 30),
        Icon(
          Icons.arrow_forward_ios,
          size: 15,
        )
      ],
    );
  }
}

class RidePakageRantalIntercity extends StatelessWidget {
  const RidePakageRantalIntercity({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);

  final String? text, icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
            color: Color(0xFFEEEFEF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: SvgPicture.asset(
              icon!,
              height: 40,
              width: 40,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(text!)
      ],
    );
  }
}
