import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  List<Map<String, dynamic>> absensiData = [
    {
      'date': DateTime(2024, 12, 13),
      'clockIn': '09:20',
      'clockOut': '06:28',
    },
    {
      'date': DateTime(2024, 12, 12),
      'clockIn': '09:10',
      'clockOut': '-',
    },
  ];

  List<Map<String, dynamic>> izinData = [
    {
      'date': DateTime(2024, 12, 11),
      'information': 'Izin Sakit',
    },
  ];

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final DateTime _firstDay = DateTime(2024);
  final DateTime _lastDay = DateTime.now();

  @override
  void initState() {
    super.initState();
    if (_focusedDay.isAfter(_lastDay)) {
      _focusedDay = _lastDay;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bgheader.png'),
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 12,
                ),
                child: Row(
                  children: [
                    Text(
                      'History',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            TableCalendar(
              focusedDay: _focusedDay,
              firstDay: _firstDay,
              lastDay: _lastDay,
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              eventLoader: (day) {
                return _getEventsForDay(day);
              },
            ),
            const SizedBox(height: 20),
            _selectedDay != null
                ? _getIzinDataForDay(_selectedDay!).isNotEmpty
                    ? Row(
                        children: [
                          Expanded(
                            child: DataTable(
                              columns: const [
                                DataColumn(label: Text('Date')),
                                DataColumn(label: Text('Information')),
                              ],
                              rows:
                                  _getIzinDataForDay(_selectedDay!).map((izin) {
                                return DataRow(
                                  cells: [
                                    DataCell(Text(DateFormat('dd MMM yyyy')
                                        .format(izin['date']))),
                                    DataCell(Text(izin['information'])),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      )
                    : _getAbsensiDataForDay(_selectedDay!).isNotEmpty
                        ? Row(
                            children: [
                              Expanded(
                                child: DataTable(
                                  columns: const [
                                    DataColumn(label: Text('Date')),
                                    DataColumn(label: Text('Check In')),
                                    DataColumn(label: Text('Check Out')),
                                  ],
                                  rows: _getAbsensiDataForDay(_selectedDay!),
                                ),
                              ),
                            ],
                          )
                        : const Center(
                            child: Text('Tidak ada absensi dan izin'))
                : const Center(
                    child:
                        Text('Pilih tanggal untuk melihat absensi dan izin')),
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getEventsForDay(DateTime day) {
    return absensiData
        .where((event) =>
            DateFormat('yyyy-MM-dd').format(event['date']) ==
            DateFormat('yyyy-MM-dd').format(day))
        .toList();
  }

  List<DataRow> _getAbsensiDataForDay(DateTime day) {
    return _getEventsForDay(day).map((event) {
      return DataRow(
        cells: [
          DataCell(Text(DateFormat('dd MMM yyyy').format(event['date']))),
          DataCell(Text(event['clockIn'])),
          DataCell(Text(event['clockOut'])),
        ],
      );
    }).toList();
  }

  List<Map<String, dynamic>> _getIzinDataForDay(DateTime day) {
    return izinData
        .where((izin) =>
            DateFormat('yyyy-MM-dd').format(izin['date']) ==
            DateFormat('yyyy-MM-dd').format(day))
        .toList();
  }
}
