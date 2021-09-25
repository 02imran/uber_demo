import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WhereTo extends StatelessWidget {
  const WhereTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: SvgPicture.asset(
                  'assets/svg/user.svg',
                  height: 25,
                  width: 25,
                ),
              ),
              Text(
                'For Me',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 10),
              IconText(
                text: 'Saved Place',
                icon: Icons.star,
              ),
              Divider(
                color: Colors.black,
              ),
              IconText(
                text: 'Set Location on Map',
                icon: Icons.pin_drop,
              ),
              SizedBox(height: 20),
              IconText(
                text: 'Enter Destination Later',
                icon: Icons.skip_next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    this.icon,
    this.text,
  }) : super(key: key);
  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFEEEFEF)),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        Text(text!),
      ],
    );
  }
}
