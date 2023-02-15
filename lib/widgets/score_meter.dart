import 'package:flutter/material.dart';
import 'package:gauges/gauges.dart';

class ScoreMeter extends StatelessWidget {
  int value;
  ScoreMeter({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        RadialGauge(
          axes: [
            RadialGaugeAxis(
              color: Colors.transparent,
              segments: const [
                RadialGaugeSegment(
                  minValue: 0,
                  maxValue: 200,
                  minAngle: -150,
                  maxAngle: -75,
                  color: Colors.red,
                ),
                RadialGaugeSegment(
                  minValue: 200,
                  maxValue: 400,
                  minAngle: -75,
                  maxAngle: 0,
                  color: Colors.orange,
                ),
                RadialGaugeSegment(
                  minValue: 400,
                  maxValue: 600,
                  minAngle: 0,
                  maxAngle: 75,
                  color: Colors.yellow,
                ),
                RadialGaugeSegment(
                  minValue: 600,
                  maxValue: 800,
                  minAngle: 75,
                  maxAngle: 150,
                  color: Colors.green,
                ),
                // ...
              ],
              pointers: [
                RadialNeedlePointer(
                  value: value.toDouble(),
                  thicknessStart: 20,
                  thicknessEnd: 0,
                  length: 0.6,
                  knobRadiusAbsolute: 10,
                )
              ],
              maxValue: 800,
              minValue: 0,
            ),
          ],
        ),]
    );
  }
}
