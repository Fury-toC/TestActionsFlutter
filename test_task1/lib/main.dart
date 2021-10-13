import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:core';
import 'NotifierAndProvider.dart';


void main() => runApp(Pan());

class Pan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        home: Panel1(),
      ),
    );
  }
}

class Panel1 extends StatefulWidget {
  @override
  _Panel1State createState() => _Panel1State();
}

class _Panel1State extends State<Panel1> {

  @override
  Widget build(BuildContext context) {

    final startPoint = "08:40";
    final endPoint = "20:25";
    final classroom = "404";

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 125.0,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 2,
                  color: Colors.blueAccent
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(16.0)
              ),
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
                            Icon(
                                Icons.access_time,
                                color: Color.fromRGBO(169, 169, 169, 1)
                            ),
                            Spacer(),
                            Icon(
                                Icons.location_on_outlined,
                                color: Color.fromRGBO(169, 169, 169, 1)
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(
                                  startPoint,
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w500
                                  )
                              ),
                            ),
                            Text(endPoint,
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w500
                                )
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 2.0
                              ),
                              child: Text(
                                  classroom,
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w500)
                              ),
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
                                "Программирование на языках\nвысокого уровня (лек)",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Spacer(),
                            Text(
                                "Афанасьев Александр Васильевич",
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w500
                                )
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
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(14.0),
                            bottomLeft: Radius.circular(14.0)
                        )
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: ProviderListener(
                        provider: remainingTimeProvider,
                        onChange: (context, state) {

                        },
                        child: Consumer(
                          builder: (context, watch, child) {
                            final RemainingNotifier myNotifier = watch(remainingTimeProvider.notifier);
                            return Text(
                              myNotifier.state,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0
                              ),
                            );
                          },
                        ),
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
