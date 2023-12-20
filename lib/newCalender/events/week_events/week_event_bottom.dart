import 'package:flutter/material.dart';
import 'package:task_manager_pract/newCalender/events/week_events/weeksEvent.dart';


class WeekEventBottom extends StatefulWidget {
  const WeekEventBottom({super.key});

  @override
  State<WeekEventBottom> createState() => _WeekEventBottomState();
}

class _WeekEventBottomState extends State<WeekEventBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      height: MediaQuery.of(context).size.height*0.7,
      child: DefaultTabController(
        length: 4, // Number of tabs
        child: Column(
          children: [
            TabBar(
              dividerColor: Colors.white,
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              labelStyle: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold),
              automaticIndicatorColorAdjustment: true,
              unselectedLabelColor: Colors.black.withOpacity(0.5),
              tabs: [
                Tab(
                  text: "All(70)",
                ),
                Tab(
                  text: "HRD(17)",
                ),
                Tab(
                  text: "Tech 1(24)",
                ),
                Tab(
                  text: "Follow up(29)",
                ),
              ],
            ),
            // Add your tab bar views here
            Container(
              height: MediaQuery.of(context).size.height*0.6, // Set the height as needed
              child: TabBarView(
                children: [
                  // Content for Tab 1
                  Center(
                    child:Weekly() ,
                  ),
                  Center(
                    child: Text("It's HRD here") ,
                  ),
                  Center(
                    child: Text("It's Tech 1 here"),
                  ),
                  Center(
                    child: Text("It's Follow Up here"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
