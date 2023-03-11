import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DataTimeApp(),
    );
  }
}

class DataTimeApp extends StatefulWidget {
  const DataTimeApp({super.key});

  @override
  State<DataTimeApp> createState() => _DataTimeAppState();
}

class _DataTimeAppState extends State<DataTimeApp> {
  String year = '';
  String dayNumber = '';
  String month = '';
   String dayWeek = '';
     String hour = '';
      String minute = '';
       String second = '';
     






  changeEverySec() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {

    hour = DateTime.now().hour.toString();
    minute = DateTime.now().minute.toString();
    second = DateTime.now().second.toString();



        year = DateTime.now().year.toString();
        month = DateTime.now().month.toString();
        switch (month) {
          case '1':
            month = 'January';
            break;

          case '2':
            month = 'Feb';
            break;

          case '3':
            month = 'March';
            break;
        }
        dayNumber = DateTime.now().day.toString();
        dayWeek = DateTime.now().weekday.toString();
         switch (dayWeek) {
          case '1':
            dayWeek = 'SunDay';
            break;

          case '2':
            dayWeek = 'ModDay';
            break;

          case '3':
            dayWeek = 'TusdDay';
            break;

          case '4':
            dayWeek = 'SturDAy';
            break;

            case '5':
            dayWeek = 'WenDay';
            break;




        }

      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeEverySec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        centerTitle: true,
        title: Text('Time and Date'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tody Is $dayWeek',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$month,$dayNumber,$year',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$hour:$minute:$second',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
