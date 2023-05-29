import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tbcare_application/pages/home_page.dart';

class KontrolPage extends StatelessWidget {
  KontrolPage({super.key});

  final DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: const Color(0xff73FE9A),
                  height: 90,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff73FE9A),
                            minimumSize: const Size(0, 0)),
                        onPressed: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      const Spacer(),
                      const Text(
                        "Kontrol",
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
            content()
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text("Selected Day = ${today.toString().split(" ")[0]}"),
          Container(
            alignment: Alignment.center,
            child: TableCalendar(
              locale: "en_US",
              rowHeight: 43,
              headerStyle: const HeaderStyle(
                  formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 10, 16),
            ),
          )
        ],
      ),
    );
  }
}
