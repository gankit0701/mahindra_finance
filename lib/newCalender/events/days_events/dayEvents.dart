import 'package:flutter/material.dart';
import 'package:task_manager_pract/newCalender/constants.dart';

class Days extends StatefulWidget {
  const Days({super.key});

  @override
  State<Days> createState() => _DaysState();
}





class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daysChoices.length,
      itemBuilder: (BuildContext context, int index) {
        DayEventConstant stat = daysChoices[index];
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 15.0, left: 10, right: 10),
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0.0),
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.01),
                    )
                  ],
                  borderRadius: BorderRadius.circular(14),
                border: Border.all(width: 1,color: Colors.black.withOpacity(0.1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            stat.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "ID: ${stat.ids}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.call_outlined, color: Colors.blue,),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                          "Offered : "
                      ),
                      Text(
                        stat.offered,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                          "Current : "
                      ),
                      Text(
                        stat.current,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    stat.priorty, style: TextStyle(color: stat.priorty.contains("High Priority")? Colors.red : Colors.orange,  fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 0.1, color: Colors.black.withOpacity(0.2),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Due Date'),
                          Text(stat.date, style: TextStyle( fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Level'),
                          Text(stat.level, style: TextStyle( fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Days Left'),
                          Text(stat.days_left, style: TextStyle( fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10,)
                ],

              ),
            ),
          ],
        );
      },
    );
  }
}