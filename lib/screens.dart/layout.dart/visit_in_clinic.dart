import 'package:flutter/material.dart';

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
  const ClinicBooking({super.key});

  @override
  State<ClinicBooking> createState() => _ClinicBookingState();
}

class _ClinicBookingState extends State<ClinicBooking> {
  final List<Clinic> _clinics = [
    Clinic(name: 'Clinic 1', times: [], bookings: []),
    Clinic(name: 'Clinic 2', times: [], bookings: []),
  ];

  final List<String> _days = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday'
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

  String? _selectedClinic;
  String? _selectedDay;
  String? _selectedTime;
  final TextEditingController _patientNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  bool _isBooked = false;

  @override
  void dispose() {
    _patientNameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _handleBook() {
    if (_selectedClinic != null &&
        _selectedDay != null &&
        _selectedTime != null &&
        _patientNameController.text.isNotEmpty &&
        _phoneNumberController.text.isNotEmpty) {
      final clinicIndex =
          _clinics.indexWhere((clinic) => clinic.name == _selectedClinic);
      if (clinicIndex != -1) {
        if (!_clinics[clinicIndex].bookings.any(
              (booking) =>
                  booking.day == _selectedDay && booking.time == _selectedTime,
            )) {
          setState(() {
            _clinics[clinicIndex].bookings.add(
                  Booking(
                    day: _selectedDay!,
                    time: _selectedTime!,
                    patientName: _patientNameController.text,
                    phoneNumber: _phoneNumberController.text,
                  ),
                );
            _isBooked = true;
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('This appointment is already booked')),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill out all fields')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clinic Booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: _selectedClinic,
              onChanged: (value) {
                setState(() {
                  _selectedClinic = value;
                  _isBooked = false;
                });
              },
              items: _clinics
                  .map((clinic) => DropdownMenuItem(
                        value: clinic.name,
                        child: Text(clinic.name),
                      ))
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Select Clinic',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedDay,
              onChanged: (value) {
                setState(() {
                  _selectedDay = value;
                  _isBooked = false;
                });
              },
              items: _days
                  .map((day) => DropdownMenuItem(
                        value: day,
                        child: Text(day),
                      ))
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Select Day',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: _selectedTime,
              onChanged: (value) {
                setState(() {
                  _selectedTime = value;
                  _isBooked = false;
                });
              },
              menuMaxHeight: 200,
              items: _hours
                  .map((hour) => DropdownMenuItem(
                        value: hour,
                        child: Text(hour),
                      ))
                  .toList(),
              decoration: const InputDecoration(
                labelText: 'Select Time',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _patientNameController,
              decoration: const InputDecoration(
                labelText: 'Patient Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            _isBooked
                ? Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        const Text('Appointment booked successfully!'),
                        Text('Clinic: $_selectedClinic'),
                        Text('Day: $_selectedDay'),
                        Text('Time: $_selectedTime'),
                        Text('Patient Name: ${_patientNameController.text}'),
                        Text('Phone Number: ${_phoneNumberController.text}'),
                      ],
                    ),
                  )
                : ElevatedButton(
                    onPressed: _handleBook,
                    child: const Text('Book Now'),
                  ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _clinics.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _clinics[index].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ..._clinics[index].bookings.map((booking) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(
                                'Day: ${booking.day}, Time: ${booking.time}, Patient Name: ${booking.patientName}, Phone: ${booking.phoneNumber}',
                              ),
                            )),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
