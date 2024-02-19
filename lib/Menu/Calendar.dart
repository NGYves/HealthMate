import 'package:flutter/material.dart';
import 'package:healthapp/Needs/paged_vertical_calendar.dart';
import 'package:intl/intl.dart';


class Calendrier extends StatefulWidget {
  const Calendrier({Key? key}) : super(key: key);

  @override
  _CalendrierState createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color.fromARGB(255, 247, 201, 201)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.pink,
        title: const Text("Calendar", style: TextStyle(color: Colors.white)),
      ),
      body: DatePicker(),
    );
  }
}

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  
  late DateTime currentDate;
  late List<DateTime> periodDays;
  late List<DateTime> fertilityDays;

  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
    calculatePeriodAndFertilityDays();
   
  }





  void calculatePeriodAndFertilityDays(){
    periodDays = [];
    fertilityDays = [];
    int cycleLength = 28;
    int periodLength =5;
     // Adjusted period length
    int fertilityWindowStart = 10; // Adjusted fertility window start
    int fertilityWindowEnd = 15; // Adjusted fertility window end

    DateTime startDate = DateTime(currentDate.year, currentDate.month, currentDate.day);
    for (int i = 0; i < cycleLength; i++) {
      DateTime date = startDate.add(Duration(days: i));
      int dayInCycle = i % cycleLength;
      if (dayInCycle < periodLength) {
        periodDays.add(date);
      }
      if (dayInCycle >= fertilityWindowStart && dayInCycle <= fertilityWindowEnd) {
        fertilityDays.add(date);
      }
    }
  }
   String getMessage(DateTime date) {
    if (periodDays.contains(date)) {
      return 'Jour des Règles possible';
    } else if (fertilityDays.contains(date)) {
      return 'Période de fertilité prédite';
    } else {
      return 'Jour normal';
    }
  }

   void showPeriodDayMessage(BuildContext context, DateTime date) {
    String message = getMessage(date);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.pink,
          content: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Evènement du jour',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  message,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PagedVerticalCalendar(
      addAutomaticKeepAlives: true,
      dayBuilder: (context, date) {
        final isInPeriod = periodDays.contains(date);
        final isInFertility = fertilityDays.contains(date);

        Color? dayColor;
        if (isInPeriod) {
          dayColor = Colors.red;
        } else if (isInFertility) {
          dayColor = Colors.blue;
        }

        return GestureDetector(
          onTap: () {
           showPeriodDayMessage(context, date);
          },
          child: Container(
            color: dayColor,
            child: Center(
              child: Text(
                DateFormat('d').format(date),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
      highlightDayPredicate: (date) {
        return null;
      },
    );
  }
}
