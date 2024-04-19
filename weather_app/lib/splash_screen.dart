import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WeatherPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/weathericon.jpg',
              height: 120,
              width: 120,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text("Weather",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                      fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
