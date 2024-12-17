import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        _RecipesCard(context),
        _RecipesCard(context),
      ],
    ));
  }

  Widget _RecipesCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                      "https://www.google.com/search?client=opera-gx&hs=wL4&sca_esv=59d83465afa8625f&sxsrf=ADLYWIIRBWtqpY2Nt6OiaD_2oorPtEz9VA:1734391191344&q=lasagna&udm=2&fbs=AEQNm0CbCVgAZ5mWEJDg6aoPVcBgWizR0-0aFOH11Sb5tlNhd7Qv31WAq-g3XdD7m281OKwjD4okv4LhuaNmkXELnX7s2YI3wopyU-RDYqm1a1-q1LOPFkP9xmvrqOQm2fZzi6YdEMagFWbGUOxqNIhWsQxIglMZBWG3PU6n1XTl2IQyOt3bDqJPsWRQDe8ZMWo8zepDb1roikznKN2ZHggsTbaKlR-K5w&sa=X&ved=2ahUKEwjB8_HWtq2KAxW-rZUCHQmQNdMQtKgLegQIERAB&biw=755&bih=692&dpr=1.25#vhid=cuRjAA4mp_C5MM&vssid=mosaic"),
                ),
              ),
              SizedBox(
                width: 26,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'PIZZA',
                    style: TextStyle(fontSize: 16, fontFamily: "quicksand"),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Edullys T',
                    style: TextStyle(fontSize: 16, fontFamily: "quicksand"),
                  ),
                  Container(height: 2, width: 75, color: Colors.blue)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
