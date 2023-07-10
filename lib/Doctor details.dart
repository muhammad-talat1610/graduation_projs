import 'package:flutter/material.dart';
import 'package:graduation_project/BNBar_Screens/all about BNAVBAR screens.dart';

class DoctorProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BNAVBAR().bnavbar(),
      appBar: AppBar(
          backgroundColor:
           Theme.of(context).appBarTheme.backgroundColor,
           actions: [Padding(
            padding: EdgeInsets.all(8),
            child: Icon(Icons.facebook))],

          title: Center(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
            child: Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
          ))),
      body: detailsOfPersona(
          context,
          "https://via.placeholder.com/150",
          "Bale",
          "London Eye, South Bank, London SE1 7PB, UK",
          "45",
          "5",
          "CR7 IS THE REAL G.O.A.T"),
    );
  }

  Widget detailsOfPersona(
    BuildContext context,
    String image,
    String name,
    String location,
    String price,
    String rate,
    String nurseDetails,
  ) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                child: Container(
                  width: 150,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: mainColor,
                      width: 5.0,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/media/E7QRfFXWUAoqKUv?format=jpg&name=4096x4096"),
                    radius: 50,
                  ),
                ),
              ),
              _mainfont('Cristiano Ronaldo'),
              _subfont('Top Scorer of History'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 5),
                  _subfont("5.0"),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        _subfont("Adress"),
                        _mainfont("Al-Reyad"),
                      ],
                    ),
                    SizedBox(
                      width: 165,
                    ),
                    Column(
                      children: [_subfont("Price"), _mainfont("200M \$")],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "     About:",
                      style: TextStyle(
                        fontSize: 18,
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(20)),
                        height: 300,
                        width: 500,
                        margin: EdgeInsets.fromLTRB(16, 10, 16, 16),
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                              'Cristiano Ronaldo, also known as CR7, is a Portuguese professional footballer who has had a remarkable career in the sport. Here are seven lines about his career:\n\n1. Ronaldo began his professional career with Sporting CP in Portugal before moving on to Manchester United in England in 2003.\n\n2. During his six-year stint at Manchester United, Ronaldo won three Premier League titles, one FA Cup, and one UEFA Champions League trophy.\n\n3. In 2009, Ronaldo joined Real Madrid for a then-world-record transfer fee of €94 million and went on to have an incredible nine-year spell with the club.',
                              style: TextStyle(color: grayColor)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Comments',
                      style: TextStyle(
                        fontSize: 18,
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://via.placeholder.com/150'),
                          radius: 25,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor,
                                ),
                              ),
                              Text(
                                'User Comment',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: mainColor,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(width: 5),
                                  Text(
                                    'User Rating',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: mainColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage('https://via.placeholder.com/150'),
                          radius: 25,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor,
                                ),
                              ),
                              Text(
                                'User Comment',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: mainColor,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(width: 5),
                                  Text(
                                    'User Rating',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: mainColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Color mainColor = Color(0xff026670);
  Color? grayColor = Colors.white;
  Widget _mainfont(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 25,
        color: mainColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _subfont(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        color: mainColor,
      ),
    );
  }
}
