import 'package:flutter/material.dart';
import 'package:weather_app/model/weatherModel.dart';
import 'package:weather_app/views/forecast.dart';
import 'package:weather_app/views/home.dart';
import 'package:weather_app/views/search.dart';
import 'package:weather_app/views/settings.dart';

class NavBar extends StatefulWidget {
  List<WeatherModel> weatherModel = [];
  NavBar({
    super.key,
    required this.weatherModel,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final int _currentIndex = 0;
  late List<Widget> pages;
  @override
  void initState() {
    pages = [
      Home(
        weatherModel: widget.weatherModel,
      ),
      const Search(),
      const Forecast(),
      const Settings()
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff060720),
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/1.2.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/1.1.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/2.2.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/2.1.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/3.2.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/3.1.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/4.2.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/4.1.png',
                height: myHeight * 0.03,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
