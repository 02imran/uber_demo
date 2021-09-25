import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.highlight_remove,
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Adnan Morshed',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: SvgPicture.asset(
                      'assets/svg/user.svg',
                      height: 40,
                      width: 40,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(5),
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEFEF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Text('4.5')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HelpWalletTrip(
                    text: 'Help',
                    icon: Icons.help_outline_outlined,
                  ),
                  HelpWalletTrip(
                    text: 'Wallet',
                    icon: Icons.account_balance_wallet,
                  ),
                  HelpWalletTrip(text: 'Trips', icon: Icons.watch_later),
                ],
              ),
              SizedBox(height: 20),
              IconAndText(icon: Icons.mail, text: 'Massage'),
              SizedBox(height: 30),
              IconAndText(icon: Icons.settings, text: 'Settings'),
              SizedBox(height: 30),
              IconAndText(
                  icon: Icons.person, text: 'Drive and deliver with Uber'),
              SizedBox(height: 30),
              IconAndText(icon: Icons.help, text: 'Legal'),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class IconAndText extends StatelessWidget {
  const IconAndText({
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
        Icon(
          icon,
          size: 18,
        ),
        SizedBox(width: 30),
        Text(
          text!,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class HelpWalletTrip extends StatelessWidget {
  const HelpWalletTrip({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);
  final String? text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 110,
      decoration: BoxDecoration(
        color: Color(0xFFEEEFEF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon!),
          SizedBox(height: 5),
          Text(text!),
        ],
      ),
    );
  }
}
