import 'package:flutter/material.dart';
import 'home.dart';
import 'experience.dart';
import 'skill.dart';
import 'moreinfo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  bool _isLoading = true;

  final List<Widget> _screens = [
    HomeScreen(),
    ExperienceScreen(),
    SkillScreen(),
    MoreInfoPage(), // Tambahkan MoreInfoScreen ke dalam list _screens
  ];

  @override
  void initState() {
    super.initState();
    // Simulasi penundaan 5 detik sebelum menganggap loading selesai
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:  TextTheme(
          bodyText2: TextStyle(
            fontFamily: 'Poppins',
          )
        )
      ),
      home: Scaffold(
        body: _isLoading
            ? LoadingScreen()
            : IndexedStack(
                index: _currentIndex,
                children: _screens,
              ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Color.fromARGB(255, 238, 113, 136),
          unselectedItemColor: Colors.grey, // Tambahkan properti ini
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Experience',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: 'Skill',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'More Info',
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
