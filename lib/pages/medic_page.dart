import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
