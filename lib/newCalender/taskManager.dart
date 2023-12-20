import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_manager_pract/UIHelper/constants.dart';
import 'package:task_manager_pract/newCalender/events/days_events/day_event_bottom.dart';
import 'package:task_manager_pract/newCalender/events/week_events/week_event_bottom.dart';
import 'package:toggle_switch/toggle_switch.dart';


class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager>
    with TickerProviderStateMixin {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime? _selectedDay;
  late DateTime _focusedDay = DateTime.now();
  DateTime? _rangestartday;
  DateTime? _rangeendday;
  late TabController _tabController;

  var days = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedDay = _focusedDay;
    _tabController = TabController(length: 4, vsync: this);
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });

      _showBottomSheet(selectedIndex);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangestartday = start;
      _rangeendday = end;
      _showBottomSheet(selectedIndex);
      print("weekcall");
    });

  }

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Calendar", style: txtblacknormal18),
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ToggleSwitch(
              minWidth: 60,
              initialLabelIndex: selectedIndex,
              activeBgColors: [ [Colors.blue],[Colors.blue]],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.white,
              inactiveFgColor: Colors.blue,
              borderWidth: 1,
              borderColor: [Colors.blue],
              totalSwitches: 2,
              labels: ['Day', 'Week'],
              onToggle: (index) {
                setState(() {
                  selectedIndex = index!;
                  days = index.toString();
                  print('switched to: $index');

                    _calendarFormat = CalendarFormat.week;

                });
              },
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            selectedIndex==0?
            Container(
              child: TableCalendar(
                daysOfWeekVisible: true,
                calendarFormat: _calendarFormat,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(formatButtonVisible: false),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: _onDaySelected,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ):Container(
              child: TableCalendar(
                daysOfWeekVisible: true,
                calendarFormat: _calendarFormat,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                startingDayOfWeek: StartingDayOfWeek.monday,
                headerStyle: HeaderStyle(formatButtonVisible: false),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },


                rangeStartDay: _rangestartday,
                rangeEndDay: _rangeendday,
                rangeSelectionMode: RangeSelectionMode.toggledOn,
                onRangeSelected: _onRangeSelected  ,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(int selectedIndex) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return selectedIndex == 0 ? DayEventsBottomSheet(): WeekEventBottom();
      },
    );
  }
}
