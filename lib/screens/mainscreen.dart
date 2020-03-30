import 'package:flutter/material.dart';
import '../models/graph.dart'; 
import '../widgets/subitem.dart';
class  MainScreen extends StatelessWidget {
  final List<Attendance> attendanceList =[
    Attendance(
      subjectname: 'ATFL',
      subjectcode: 'ABC001',
      classestaken:18,
      classpresent: 15,
    ),
    Attendance(
      subjectname: 'DBMS',
      subjectcode: 'ABC002',
      classestaken: 25,
      classpresent: 23,
    ),
    Attendance(
      subjectname: 'OS',
      subjectcode: 'ABC003',
      classestaken: 19,
      classpresent: 18,
    ),
    Attendance(
      subjectname: 'Maths',
      subjectcode: 'ABC004',
      classestaken: 21,
      classpresent: 21,
    ),
    Attendance(
      subjectname: 'Algorithm Design',
      subjectcode: 'ABC005',
      classestaken: 18,
      classpresent: 14,
    ),
    Attendance(
      subjectname: 'Microprocessors',
      subjectcode: 'ABC006',
      classestaken: 19,
      classpresent: 16,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Attendance App'),
      ),
      drawer: Drawer(
        child: Text('Drawer'),
      ),

      body:
        ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: attendanceList.length,
        itemBuilder: (ctx,i) => Subject(
          attendanceList[i].subjectname,
          attendanceList[i].subjectcode,
          attendanceList[i].classestaken,
          attendanceList[i].classpresent,
          ),
      ),
      
    );
  }
}