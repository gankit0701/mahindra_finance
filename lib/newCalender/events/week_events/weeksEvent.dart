import 'package:flutter/material.dart';
import 'package:task_manager_pract/newCalender/constants.dart';

class Weekly extends StatefulWidget {
  const Weekly({super.key});

  @override
  State<Weekly> createState() => _WeeklyState();
}



class _WeeklyState extends State<Weekly> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weekchoices.length,
      itemBuilder: (BuildContext context, int index) {
        WeekEventConstant stat = weekchoices[index];
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 3),
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                border: Border.all(width: 1,color: Colors.black26)
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: 70.0,
                  width: 5.0,
                  margin: EdgeInsets.only(left: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(2)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 15.0, right: 10),
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
                  height: 70.0,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.05),
                      )
                    ],

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            stat.date,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 1,color: Colors.black26)
                            ),
                            child: Text(
                              stat.hrd,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  ),
                            ),
                          ),
                          Text(
                            "HRD",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 1,color: Colors.black26)
                            ),
                            child: Text(
                              stat.tech,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  ),
                            ),
                          ),
                          Text(
                            "Tech 1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 1,color: Colors.black26)
                            ),
                            child: Text(
                              stat.follow_up,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                 ),
                            ),
                          ),
                          Text(
                            "Follow Up",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.black,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 1,color: Colors.black26)
                            ),
                            child: Text(
                              stat.total,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  ),
                            ),
                          ),
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
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
        );
      },
    );
  }
}


