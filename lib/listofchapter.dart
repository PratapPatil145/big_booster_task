import 'package:flutter/material.dart';
import 'package:task/question.dart';

class ListOfChapters extends StatefulWidget {
  const ListOfChapters({super.key});

  @override
  State<ListOfChapters> createState() => _ListOfChaptersState();
}

class _ListOfChaptersState extends State<ListOfChapters> {
  List chapter = [
    "Chapter 1",
    "Chapter 2",
    "Chapter 3",
    "Chapter 4",
    "Chapter 5",
    "Chapter 6",
    "Chapter 7",
    "Chapter 8"
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
        title: Text("List Of Chapters"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: chapter.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedAnswer = "gjhg";
                          selectedindex = 1;
                        });
                      },
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
                            Text(
                              chapter[index].toString(),
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
                                              CourseWiseQuestion()));
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
