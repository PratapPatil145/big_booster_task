import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class CourseWiseQuestion extends StatefulWidget {
  CourseWiseQuestion({super.key});

  @override
  State<CourseWiseQuestion> createState() => _CourseWiseQuestionState();
}

class _CourseWiseQuestionState extends State<CourseWiseQuestion> {
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
        title: Text("Question List"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: ((context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Question... ",
                                      style: TextStyle(color: Colors.brown),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      "Who is the PM of india..?",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedAnswer = "gjhg";
                                      selectedindex = 1;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: selectedindex,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedindex = value as int;
                                              print(
                                                  "1 selectedindex${selectedindex}");
                                            });
                                          },
                                        ),
                                        Text(
                                          "Manmohan singh",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedAnswer =
                                          " questiondata[0].optionTwo!";
                                      selectedindex = 2;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 2,
                                          groupValue: selectedindex,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedindex = value as int;
                                              // _site = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Nitin Gadkari",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedAnswer = "three";
                                      selectedindex = 3;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 3,
                                          groupValue: selectedindex,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedindex = value as int;
                                              // _site = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Narendra MOdi",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedAnswer = "Four";
                                      selectedindex = 4;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 4,
                                          groupValue: selectedindex,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedindex = value as int;
                                              // _site = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          "Rajiv Gandhi",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      EasyLoading.showToast('Narendra Modi');
                                      // ApiCall()
                                      //     .showToast("Narendra Modi", context);
                                      // showtttoast();
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(top: 20),
                                      padding: EdgeInsets.all(20),
                                      // height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xff080053),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 30, right: 30),
                                          child: Text(
                                            'Submit',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      })),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 10,
                          child: TextField(
                              // decoration: InputDecoration(
                              //   prefixIcon: Icon(Icons.search),
                              //   enabledBorder: OutlineInputBorder(
                              //     borderSide:
                              //         BorderSide(color: Colors.black, width: 4.0),
                              //     borderRadius: const BorderRadius.all(
                              //       const Radius.circular(30.0),
                              //     ),
                              //   ),
                              // ),
                              ),
                        ),
                        Text(
                          "Is the PM of India",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }

  // void showtttoast() {
  //   Fluttertoast.showToast(
  //       msg: "Narendra Modi",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }
}
