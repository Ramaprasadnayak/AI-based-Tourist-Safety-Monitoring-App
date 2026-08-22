import 'package:flutter/material.dart';
import 'package:safeyatra/widgets/graph.dart';

class SafetyScore extends StatefulWidget {
  const SafetyScore({super.key});

  @override
  State<SafetyScore> createState() => _SafetyScoreState();
}

class _SafetyScoreState extends State<SafetyScore> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  shape: const CircleBorder(),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.auto_awesome_outlined),
                  ),
                ),
                Text("AI Safety Score"),
              ],
            ),
            Row(children: [RiskGauge(riskScore: 78)]),
          ],
        ),
      ),
    );
  }
}
