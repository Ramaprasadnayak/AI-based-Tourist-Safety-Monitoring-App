import 'package:flutter/material.dart';
import 'package:safeyatra/widgets/graph.dart';

class SafetyScore extends StatefulWidget {
  final double score;
  const SafetyScore({
    super.key,
    required this.score
  });

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
            Row(children: [RiskGauge(riskScore: widget.score)]),
            if(widget.score<50)
            Text("Unsafe")
            else if(widget.score<80)
            Text("Moderate")
            else
            Text("Safe")
          ],
        ),
      ),
    );
  }
}
