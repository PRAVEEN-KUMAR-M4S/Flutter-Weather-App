import 'package:flutter/material.dart';

class HourlyForecast extends StatelessWidget {
  final String time;
  final double temperature;
  final IconData icon;
  const HourlyForecast({super.key, required this.time, required this.temperature, required this.icon});

  @override
  Widget build(BuildContext context) {
    
    return Card(
      elevation: 4,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(
            8), //EdgeInsets.only(left: 20,right: 20,top: 8,bottom: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child:  Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
            ),
            SizedBox(
              height: 8,
            ),
             Text("${(temperature - 273.15).toStringAsFixed(1)}°C")
            
          ],
        ),
      ),
    );
  }
}
