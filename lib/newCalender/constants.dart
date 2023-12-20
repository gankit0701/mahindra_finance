class DayEventConstant {
  const DayEventConstant({required this.date, required this.level, required this.days_left,
    required this.priorty, required this.ids, required this.offered,
    required this.current, required this.name});

  final String date;
  final String level;
  final String days_left;
  final String priorty;
  final String ids;
  final String offered;
  final String current;
  final String name;
}


const List<DayEventConstant> daysChoices = const <DayEventConstant>[
  const DayEventConstant(date: "05 Jun 23", level: "10" , days_left: "23", priorty: "Medium Priority", ids: "LDURBY1235", offered: "X,XX,XXX", current: "X,XX,XXX", name: "Ankit Gupta"),
  const DayEventConstant(date: "05 Jun 23", level: "10" , days_left: "92", priorty: "High Priority", ids: "LDURBY1238", offered: "X,XX,XXX", current: "X,XX,XXX", name: "Rakesh Nair")
];



//Weeks Event

class WeekEventConstant {
  const WeekEventConstant(
      {required this.date,
        required this.hrd,
        required this.tech,
        required this.follow_up,
        required this.total});

  final String date;
  final String hrd;
  final String tech;
  final String follow_up;
  final String total;
}


const List<WeekEventConstant> weekchoices = const <WeekEventConstant>[
  const WeekEventConstant(
      date: ' 24\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
  const WeekEventConstant(
      date: ' 25\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
  const WeekEventConstant(
      date: ' 26\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
  const WeekEventConstant(
      date: ' 27\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
  const WeekEventConstant(
      date: ' 28\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
  const WeekEventConstant(
      date: ' 29\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
  const WeekEventConstant(
      date: ' 30\nAPR', hrd: '03', tech: '02', follow_up: '05', total: '10'),
];




