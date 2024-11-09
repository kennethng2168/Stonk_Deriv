// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_gauges/gauges.dart';

class MeterGauage extends StatefulWidget {
  const MeterGauage({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<MeterGauage> createState() => _MeterGauageState();
}

class _MeterGauageState extends State<MeterGauage> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
            showLabels: false,
            showAxisLine: false,
            showTicks: false,
            minimum: 0,
            maximum: 99,
            startAngle: 180,
            endAngle: 0,
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: 0,
                  endValue: 20,
                  color: Color.fromARGB(255, 139, 0, 0),
                  // label: 'Slow',
                  sizeUnit: GaugeSizeUnit.factor,
                  labelStyle: GaugeTextStyle(fontFamily: 'Times', fontSize: 20),
                  startWidth: 0.20,
                  endWidth: 0.20),
              GaugeRange(
                startValue: 20,
                endValue: 40,
                color: Color.fromARGB(255, 255, 99, 71),
                // label: 'Moderate',
                labelStyle: GaugeTextStyle(fontFamily: 'Times', fontSize: 20),
                startWidth: 0.20,
                endWidth: 0.20,
                sizeUnit: GaugeSizeUnit.factor,
              ),
              GaugeRange(
                startValue: 40,
                endValue: 60,
                color: Color.fromARGB(255, 74, 74, 74),
                // label: 'Fast',
                labelStyle: GaugeTextStyle(fontFamily: 'Times', fontSize: 20),
                startWidth: 0.20,
                endWidth: 0.20,
              ),
              GaugeRange(
                startValue: 60,
                endValue: 80,
                color: Color.fromARGB(255, 0, 100, 0),
                // label: 'Fast',
                labelStyle: GaugeTextStyle(fontFamily: 'Times', fontSize: 20),
                sizeUnit: GaugeSizeUnit.factor,
                startWidth: 0.20,
                endWidth: 0.20,
              ),
              GaugeRange(
                startValue: 80,
                endValue: 100,
                color: Color.fromARGB(255, 46, 139, 87),
                // label: 'Fast',
                labelStyle: GaugeTextStyle(fontFamily: 'Times', fontSize: 20),
                sizeUnit: GaugeSizeUnit.factor,
                startWidth: 0.20,
                endWidth: 0.20,
              )
            ],
            pointers: <GaugePointer>[
              NeedlePointer(value: 60)
            ])
      ],
    );
    ;
  }
}
