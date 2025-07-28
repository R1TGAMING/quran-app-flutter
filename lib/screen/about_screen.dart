import 'package:flutter/material.dart';
import 'package:link_text/link_text.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Dibuat oleh ipii", style: TextStyle(fontSize: 30)),
          ),
        ),
        Center(child: Text("Version 1.0.0", style: TextStyle(fontSize: 20))),
        Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: LinkText(
              "https://github.com/R1TGAMING",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: LinkText(
              "https://www.tiktok.com/@ipidev?is_from_webapp=1&sender_device=pc",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: LinkText(
              "https://www.linkedin.com/in/rafi-sofyan-triyanto-1b66b131b",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
