import 'package:flutter/material.dart';
import 'package:tbcare_application/pages/kesehatan_page.dart';
import 'package:tbcare_application/pages/konsultasi_page.dart';
import 'package:tbcare_application/pages/kontrol_page.dart';
import 'package:tbcare_application/pages/medic_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget KntrlBtn(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 85,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff73FE9A), minimumSize: Size(200, 60)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return KontrolPage();
            }));
          },
          child: const Icon(
            Icons.control_point,
            size: 45,
          )),
    );
  }

  Widget MedicBtn(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 85,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff73FE9A), minimumSize: Size(200, 60)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MedicPage();
            }));
          },
          child: const Icon(
            Icons.medical_services,
            size: 45,
          )),
    );
  }

  Widget KshtnBtn(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 85,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff73FE9A), minimumSize: Size(200, 60)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return KesehatanPage();
            }));
          },
          child: const Icon(
            Icons.question_answer_outlined,
            size: 45,
          )),
    );
  }

  Widget KonsulBtn(context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: 85,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff73FE9A), minimumSize: Size(200, 60)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return KonsultasiPage();
            }));
          },
          child: const Icon(
            Icons.chat,
            size: 45,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
              ],currentIndex: 1,
            ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 23),
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Row(
                children: <Widget>[
                  Text(
                    "Hallo,",
                    style: TextStyle(fontSize: 17),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Desika Candra",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 15),
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff007E23),
                    borderRadius: BorderRadius.circular(20)),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "TBCare",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Icon(
                            Icons.school,
                            size: 40,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Desika Candra",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "11212223123",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  KntrlBtn(context),
                  MedicBtn(context),
                  KshtnBtn(context),
                  KonsulBtn(context),
                ],
              ),
            ]),
          ),
        ));
  }
}
