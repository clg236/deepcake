import 'package:flutter/material.dart';
import 'package:sandwhich/styles.dart';
import 'package:sandwhich/utils/assets_utils.dart';
import 'package:sandwhich/utils/utils.dart';

class InfoDrawer extends StatefulWidget {
  InfoDrawer({Key key}) : super(key: key);

  _InfoDrawerState createState() => _InfoDrawerState();
}

class _InfoDrawerState extends State<InfoDrawer> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width * 0.9,
      child: Drawer(
        child: Container(
          color: bgColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 64, 8, 8),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        AssetStrings.logo,
                        width: screenSize.width / 1,
                        height: screenSize.height / 8,
                      ),
                      Text(
                        "Deep Cakes",
                        style: headerText,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "About Deep Cake",
                          style: infoTitleStyle,
                        ),
                        SizedBox(height: 12),
                        Text(
                          "This app was built using TensorFlow Lite and Flutter. The was trained the model to correctly identify deep cakes.",
                          style: infoTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
