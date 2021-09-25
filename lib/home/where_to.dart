import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WhereTo extends StatelessWidget {
  const WhereTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
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
          body: Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
