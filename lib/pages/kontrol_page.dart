import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tbcare_application/data/providers/firebase_providers/kontrol/firebase_all_kontrol_data_provider.dart';
import 'package:tbcare_application/pages/home_page.dart';

class KontrolPage extends ConsumerStatefulWidget {
  const KontrolPage({super.key});

  @override
  ConsumerState<KontrolPage> createState() => _KontrolPageState();
}

class _KontrolPageState extends ConsumerState<KontrolPage> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    final allKontrolData = ref.watch(firebaseAllKontrolDataProvider);

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
            content(),
            const SizedBox(
              height: 20,
            ),
            Container(
                alignment: Alignment.center,
                width: currentWidth * 0.9,
                height: currentHeight * 0.35,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 25, 230, 100),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: allKontrolData.when(
                  data: (data) => data.when(
                      success: (listData) {
                        return ListView.builder(
                            itemCount: listData.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: const Text("ada"),
                              );
                              // if (listData.isNotEmpty) {
                              //   print(listData[index].tanggal);
                              //   return ListTile(
                              //       title: Text(
                              //     'tanggal: ${listData[index].tanggal}',
                              //   ));
                              // } else {
                              //   return const Text('Belum ada jadwal kontrol');
                              // }
                            });
                      },
                      failed: (message) => Text(message)),
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ))
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
              onDaySelected: _onDaySelected,
            ),
          )
        ],
      ),
    );
  }
}
