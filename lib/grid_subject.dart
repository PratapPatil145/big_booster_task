import 'package:flutter/material.dart';

import 'listofclasses.dart';
import 'question.dart';

class SearchClass extends StatefulWidget {
  const SearchClass({super.key});

  @override
  State<SearchClass> createState() => _SearchClassState();
}

class _SearchClassState extends State<SearchClass> {
  List sub = [
    "Physics",
    "Chemistry",
    "Biology",
    "Math",
    "History",
    "General Knowledge",
    "Economics"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xFFFB4E54),
        title: Text("My Subject"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(top: 10, right: 10),
          //   child: Container(
          //     width: double.infinity,
          //     height: 70,
          //     child: Row(
          //       children: [
          //         Expanded(
          //           flex: 6,
          //           child: Container(
          //             padding: EdgeInsets.symmetric(horizontal: 10),
          //             margin: EdgeInsets.symmetric(horizontal: 10),
          //             height: 40,
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               border: Border.all(color: Color(0xffE8E8E8)),
          //               color: Color(0xffE8E8E8),
          //             ),
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               children: [
          //                 Padding(
          //                   padding: const EdgeInsets.only(
          //                     left: 10,
          //                   ),
          //                   child: Icon(
          //                     Icons.search,
          //                     color: Color(0xff4C4C4C), // Icon color
          //                     size: 20, // Icon size
          //                   ),
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.only(left: 10),
          //                   child: Text('Search For Subject',
          //                       style: TextStyle(
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.w400,
          //                         color: Color(0xff4C4C4C),
          //                       )),
          //                 )
          //               ],
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: sub.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListOfClasses()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Color(0xfff0f0f0), // Background color
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.white, // Shadow color
                          //     spreadRadius: 5, // Spread radius
                          //     blurRadius: 7, // Blur radius
                          //     offset: Offset(0, 3), // Shadow offset
                          //   ),
                          // ],
                        ),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              height: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "https://img.icons8.com/office/128/book.png"),
                                    // AssetImage(
                                    //     'assets/images/my_class_img.png')
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(sub[index].toString(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff262626),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          // Container(
          //   width: double.infinity,
          //   height: 180,
          //   child: Row(
          //     children: [
          //       // Expanded(
          //       //   flex: 5,
          //       //   child: Padding(
          //       //     padding: const EdgeInsets.all(5.0),
          //       //     child: Container(
          //       //       height: 180,
          //       //       decoration: BoxDecoration(
          //       //         color: Color(0xfff0f0f0), // Background color
          //       //         borderRadius:
          //       //             BorderRadius.circular(10), // Border radius
          //       //         boxShadow: [
          //       //           BoxShadow(
          //       //             color: Colors.white, // Shadow color
          //       //             spreadRadius: 5, // Spread radius
          //       //             blurRadius: 7, // Blur radius
          //       //             offset: Offset(0, 3), // Shadow offset
          //       //           ),
          //       //         ],
          //       //       ),
          //       //       width: double.infinity,
          //       //       child: Column(
          //       //         children: [
          //       //           Padding(
          //       //             padding: const EdgeInsets.only(left: 5),
          //       //             child: Stack(
          //       //               children: [
          //       //                 Image(
          //       //                     image: AssetImage(
          //       //                         'assets/images/video_play_img.png')),
          //       //                 Positioned(
          //       //                   height: 20,
          //       //                   width: 20,
          //       //                   right: 10,
          //       //                   top: 10,
          //       //                   child: Container(
          //       //                     decoration: BoxDecoration(
          //       //                       borderRadius: BorderRadius.circular(3),
          //       //                       border: Border.all(color: Colors.grey),
          //       //                       color: Colors.grey,
          //       //                     ),
          //       //                     child: Image(
          //       //                         image: AssetImage(
          //       //                             'assets/images/love_img.png')),
          //       //                   ),
          //       //                 )
          //       //               ],
          //       //             ),
          //       //           ),
          //       //           Padding(
          //       //             padding: const EdgeInsets.only(top: 5),
          //       //             child: Text('Class II Hindi Medium',
          //       //                 style: SafeGoogleFont(
          //       //                   'Inter',
          //       //                   fontSize: 9,
          //       //                   fontWeight: FontWeight.w500,
          //       //                   color: Color(0xff262626),
          //       //                 )),
          //       //           ),
          //       //         ],
          //       //       ),
          //       //     ),
          //       //   ),
          //       // ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
