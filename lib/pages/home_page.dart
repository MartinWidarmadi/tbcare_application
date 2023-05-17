import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Row(children: <Widget>[

          ],)
        ]),
      ),
    ));
  }
}
