import 'package:flutter/material.dart';
import 'package:flutter_routing/about.dart';
import 'package:flutter_routing/contact.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.ac_unit_rounded),
              label: Text("Go to About with Navigator.push"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => About(),
                        settings: RouteSettings(
                            arguments: "This is data from Navigator.push")));
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.ac_unit_rounded),
              label: Text("Go to Contact witth Navigator.pushReplacement"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.yellow[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Contact(),
                        settings: RouteSettings(
                            arguments:
                                "This is data from Navigator.pushReplacement")));
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.account_box),
              label: Text("Go to setting with Navigator.pushNamed"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green[600],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.pushNamed(context, '/setting',arguments:"This is data from Navigator.pushNamed" );
              },
            ),
          ],
        ),
      ),
    );
  }
}
