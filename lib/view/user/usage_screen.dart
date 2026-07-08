import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class UsageScreen extends StatelessWidget {
  const UsageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081B3A),

      appBar: AppBar(
        backgroundColor: const Color(0xFF081B3A),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Electricity Usage",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                Expanded(
                  child: infoCard(
                    "Current Reading",
                    "1850 kWh",
                    Icons.speed,
                    Colors.orange,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: infoCard(
                    "Previous Reading",
                    "1605 kWh",
                    Icons.history,
                    Colors.blue,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: infoCard(
                    "Units Used",
                    "245 Units",
                    Icons.flash_on,
                    Colors.green,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: infoCard(
                    "Average Units",
                    "220 Units",
                    Icons.bar_chart,
                    Colors.purple,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Monthly Usage",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 300,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(20),
              ),

              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),

                  borderData: FlBorderData(show: false),

                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 35,
                      ),
                    ),

                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),

                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,

                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text(
                                "Jan",
                                style: TextStyle(color: Colors.white),
                              );

                            case 1:
                              return const Text(
                                "Feb",
                                style: TextStyle(color: Colors.white),
                              );

                            case 2:
                              return const Text(
                                "Mar",
                                style: TextStyle(color: Colors.white),
                              );

                            case 3:
                              return const Text(
                                "Apr",
                                style: TextStyle(color: Colors.white),
                              );

                            case 4:
                              return const Text(
                                "May",
                                style: TextStyle(color: Colors.white),
                              );

                            case 5:
                              return const Text(
                                "Jun",
                                style: TextStyle(color: Colors.white),
                              );
                          }

                          return const Text("");
                        },
                      ),
                    ),
                  ),

                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,

                      color: Colors.orange,

                      barWidth: 4,

                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.orange.withOpacity(0.2),
                      ),

                      dotData: FlDotData(show: true),

                      spots: const [
                        FlSpot(0, 210),

                        FlSpot(1, 225),

                        FlSpot(2, 240),

                        FlSpot(3, 195),

                        FlSpot(4, 260),

                        FlSpot(5, 245),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget infoCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),

          const SizedBox(height: 8),

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
