import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          child: Text('Go to Dashboard'),
        ),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            buildDashboardCard('Body Weight', '175 lbs', Colors.redAccent),
            buildDashboardCard('Height', '6ft 1in', Colors.orangeAccent),
            buildDashboardCard(
                'Exercise', '1.30\nBelow Optimal', Colors.yellowAccent),
            buildDashboardCard('Activity Benefit', '62%\nof max benefit',
                Colors.lightBlueAccent),
            buildDashboardCard(
                'Fitness Age', '39 years old\n7 years age diff', Colors.green),
            buildDashboardCard('Sleep', '3.5 Poor', Colors.deepOrangeAccent),
            buildDashboardCard(
                'Blood Pressure', '125/79\nElevated', Colors.yellow),
            buildDashboardCard('Fat Patterning', 'Android', Colors.pinkAccent),
            buildDashboardCard(
                'Energy Expenditure', '2370 kcal', Colors.purpleAccent),
            buildDashboardCard('Plant Index', '', Colors.greenAccent),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardCard(String title, String value, Color color) {
    return Card(
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
