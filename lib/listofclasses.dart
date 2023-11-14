import 'package:flutter/material.dart';
import 'package:task/listofchapter.dart';

import 'grid_subject.dart';

class ListOfClasses extends StatefulWidget {
  const ListOfClasses({super.key});

  @override
  State<ListOfClasses> createState() => _ListOfClassesState();
}

class _ListOfClassesState extends State<ListOfClasses> {
  List Class = [
    "Class 6",
    "Class 7",
    "Class 8",
    "Class 9",
    "Class 10",
    "Class 11",
    "Class 12"
  ];
  int? selectedValue;

  String? correctAnswer;
  String? selectedAnswer;
  int? selectedindex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFE6F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFFB4E54),
        title: Text(
          "List of classes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Class.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              maxRadius: 25,
                              minRadius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/my_class_img.png'),
                            ),
                            Text(
                              Class[index].toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                color: Color(0xff000000),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListOfChapters()));
                                },
                                icon: Icon(Icons.navigate_next))
                          ],
                        ),
                      ),
                    );
                  })))),
    );
  }
}
