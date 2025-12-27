import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppointmentScreen(),
    );
  }
}

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading:Padding(padding: EdgeInsets.all(8),
        child:
        Image.asset("assets/icon.png")

         ),
        backgroundColor: const Color(0xFF1FA7C9),
        title: const Text(
          "Appointments",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Wednesday, 22 May 2019",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                AppointmentTile(
                  name: "Iulian Ruja",
                  time: "10:50",
                ),
                AppointmentTile(
                  name: "Victoria Olari",
                  time: "13:00",
                ),
                AppointmentTile(
                  name: "Diana Stefan",
                  time: "15:20",
                ),
                AppointmentTile(
                  name: "Gheorghe Popa",
                  time: "16:10",
                ),
                AppointmentTile(
                  name: "Alexandru Sandu",
                  time: "16:40",
                  trailingIcon: Icons.close,
                  trailingColor: Colors.red,
                ),
                AppointmentTile(
                  name: "Dumitru Simona",
                  time: "08:00",
                  trailingIcon: Icons.check,
                  trailingColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppointmentTile extends StatelessWidget {
  final String name;
  final String time;
  final IconData? trailingIcon;
  final Color? trailingColor;

  const AppointmentTile({
    super.key,
    required this.name,
    required this.time,
    this.trailingIcon,
    this.trailingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          subtitle: Row(
            children: [
              const Icon(Icons.access_time, size: 16),
              const SizedBox(width: 4),
              Text(time),
            ],
          ),
          trailing: trailingIcon != null
              ? Icon(trailingIcon, color: trailingColor)
              : null,
        ),
        const Divider(height: 1),
      ],
    );
  }
}
