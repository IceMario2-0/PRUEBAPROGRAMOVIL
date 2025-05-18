import 'package:flutter/material.dart';


class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Jun 2', style: TextStyle(color: Colors.grey, fontSize: 14)),
            Text('London', style: TextStyle(color: Colors.black, fontSize: 18)),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('21°C', style: TextStyle(fontSize: 48, color: Colors.orange)),
            Text('Overcast Clouds',
                style: TextStyle(fontSize: 20, color: Colors.grey[600])),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Today',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 20),
                Text('This Week', style: TextStyle(color: Colors.grey)),
              ],
            ),
            Divider(height: 30),
            Text('Temperatures', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('8 PM'),
                    Icon(Icons.cloud, color: Colors.blue),
                    Text('21°C'),
                  ],
                ),
                Column(
                  children: [
                    Text('11 PM'),
                    Icon(Icons.cloud, color: Colors.blue),
                    Text('22°C'),
                  ],
                ),
              ],
            ),
            Divider(height: 40),
            Text('Details', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetailColumn('Minimum', '21°C'),
                _buildDetailColumn('Maximum', '22°C'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildDetailColumn('Pressure', '1020 Pa'),
                _buildDetailColumn('Humidity', '41%'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey)),
        SizedBox(height: 5),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
