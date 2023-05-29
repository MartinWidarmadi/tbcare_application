import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tbcare_application/pages/home_page.dart';

class MedicPage extends StatelessWidget {
  const MedicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Color(0xff73FE9A),
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff73FE9A),
                            minimumSize: Size(0, 0)),
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      const Spacer(),
                      const Text(
                        "Obat",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 0, width: 55),
                      const Spacer()
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(width: 1), borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text(DateFormat.EEEE().format(DateTime.now()), style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),),
                      Spacer(),
                      Text(DateFormat.jm().format(DateTime.now()), style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(children: <Widget>[
                      Text(DateFormat.MMMd().format(DateTime.now()), style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                    ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
