import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: Panel1())
  );
}

class Panel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String startPoint = "08:40";
    String endPoint = "20:25";
    String classroom = "404";

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 125.0,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.blueAccent),
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            child: Column(
              children: [
                Flexible(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.access_time, color: Color.fromRGBO(169, 169, 169, 1)),
                            Spacer(),
                            Icon(Icons.location_on_outlined, color: Color.fromRGBO(169, 169, 169, 1))
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text("$startPoint", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500)),
                            ),
                            Text("$endPoint", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500)),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              child: Text("$classroom", style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Flexible(
                              flex: 10,
                              child: Container(
                                width: 3.0,
                                color: Colors.greenAccent,
                              ),
                            ),
                            Flexible(
                              flex: 3,
                              child: Container(
                                width: 3.0,
                                color: Colors.blueAccent,
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Программирование на языках\nвысокого уровня (лек)", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
                            ),
                            Spacer(),
                            Text(
                              "Афанасьев Александр Васильевич", style: TextStyle(fontSize: 14.0, color: Colors.blueAccent, fontWeight: FontWeight.w500)
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(14.0), bottomLeft: Radius.circular(14.0))
                    ),
                    child: Center(
                      child: Text(
                        "осталось 1ч 15мин", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ),
                  ),
                )  //  Нижняя панель с оставшимся временем
              ],
            ),
          ),
        ),
      ),
    );
  }
}
