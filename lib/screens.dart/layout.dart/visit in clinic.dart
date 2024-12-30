import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clinic Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClinicBooking(),
    );
  }
}

class Clinic {
  String name;
  List<String> times;
  List<Booking> bookings;

  Clinic({required this.name, required this.times, required this.bookings});
}

class Booking {
  String day;
  String time;
  String patientName;
  String phoneNumber;

  Booking({
    required this.day,
    required this.time,
    required this.patientName,
    required this.phoneNumber,
  });
}

class ClinicBooking extends StatefulWidget {
  const ClinicBooking({Key? key}) : super(key: key);

  @override
  State<ClinicBooking> createState() => _ClinicBookingState();
}

class _ClinicBookingState extends State<ClinicBooking> {
  final List<Clinic> _clinics = [
    Clinic(
      name: 'Clinic 1',
      times: [],
      bookings: [],
    ),
    Clinic(
      name: 'Clinic 2',
      times: [],
      bookings: [],
    ),
  ];

  final List<String> _days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
  ];

  final List<String> _hours = [
    '8:30 AM',
    '9:00 AM',
    '9:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 PM',
    '12:30 PM',
    '1:00 PM',
    '1:30 PM',
    '2:00 PM',
    '2:30 PM',
    '3:00 PM',
    '3:30 PM',
    '4:00 PM',
  ];

  String _selectedClinic = '';
  String _selectedDay = '';
  String _selectedTime = '';
  String _patientName = '';
  String _phoneNumber = '';
  bool _isBooked = false;
