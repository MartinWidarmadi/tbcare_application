import 'package:flutter/material.dart';
import 'package:tbcare_application/pages/home_page.dart';

class KonsultasiPage extends StatelessWidget {
  const KonsultasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController pesanController = TextEditingController(text: "");
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
                        "Konsultasi",
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
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          child: const Icon(Icons.person),
                        ),
                        const Text(
                          "  Customber Service",
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 100,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff73FE9A),
                      ),
                      child: const Text(
                        "Selamat datang di layanan konsultasi kami. Silahkan konsultasi dengan quick chat yang ada dibawah",
                        style: TextStyle(color: Color(0xff007E23)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 150,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff73FE9A),
                      ),
                      child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Halo, saya ingin konsultasi",
                                style: TextStyle(color: Color(0xff007E23))),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                "Apakah saya bisa merubah jadwal pertemuan saya dengan dokter?",
                                style: TextStyle(color: Color(0xff007E23))),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Saya merasakan gejala yang aneh",
                                style: TextStyle(color: Color(0xff007E23))),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 231),
              child: TextField(
                controller: pesanController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                  hintText: 'Tulis pesan ....',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
