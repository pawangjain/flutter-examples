import 'package:flutter_examples/model/sample_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';

class RadialTextPointer extends SampleView {
  const RadialTextPointer(Key key) : super(key: key);
  
  @override
  _RadialTextPointerState createState() => _RadialTextPointerState();
}

class _RadialTextPointerState extends SampleViewState {
  _RadialTextPointerState();
  
  @override
  Widget build(BuildContext context) {
    return getRadialTextPointer();
  }

SfRadialGauge getRadialTextPointer() {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
          showAxisLine: false,
          showLabels: false,
          showTicks: false,
          startAngle: 180,
          endAngle: 360,
          minimum: 0,
          maximum: 120,
          canScaleToFit: true,
          radiusFactor: 0.79,
          pointers: <GaugePointer>[
            NeedlePointer(
                needleStartWidth: 1,
                lengthUnit: GaugeSizeUnit.factor,
                needleEndWidth: 5,
                needleLength: 0.7,
                value: 82,
                knobStyle: KnobStyle(knobRadius: 0)),
          ],
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 20,
                startWidth: 0.45,
                endWidth: 0.45,
                sizeUnit: GaugeSizeUnit.factor,
                color: const Color(0xFFDD3800)),
            GaugeRange(
                startValue: 20.5,
                endValue: 40,
                startWidth: 0.45,
                sizeUnit: GaugeSizeUnit.factor,
                endWidth: 0.45,
                color: const Color(0xFFFF4100)),
            GaugeRange(
                startValue: 40.5,
                endValue: 60,
                startWidth: 0.45,
                sizeUnit: GaugeSizeUnit.factor,
                endWidth: 0.45,
                color: const Color(0xFFFFBA00)),
            GaugeRange(
                startValue: 60.5,
                endValue: 80,
                startWidth: 0.45,
                sizeUnit: GaugeSizeUnit.factor,
                endWidth: 0.45,
                color: const Color(0xFFFFDF10)),
            GaugeRange(
                startValue: 80.5,
                endValue: 100,
                sizeUnit: GaugeSizeUnit.factor,
                startWidth: 0.45,
                endWidth: 0.45,
                color: const Color(0xFF8BE724)),
            GaugeRange(
                startValue: 100.5,
                endValue: 120,
                startWidth: 0.45,
                endWidth: 0.45,
                sizeUnit: GaugeSizeUnit.factor,
                color: const Color(0xFF64BE00)),
          ]),
      RadialAxis(
        showAxisLine: false,
        showLabels: false,
        showTicks: false,
        startAngle: 180,
        endAngle: 360,
        minimum: 0,
        maximum: 120,
        radiusFactor: 0.85,
        canScaleToFit: true,
        pointers: <GaugePointer>[
          MarkerPointer(
              markerType: MarkerType.text,
              text: 'Poor',
              value: 20.5,
              textStyle: GaugeTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: isCardView ? 14 : 18,
                  fontFamily: 'Times'),
              offsetUnit: GaugeSizeUnit.factor,
              markerOffset: -0.12),
          MarkerPointer(
              markerType: MarkerType.text,
              text: 'Average',
              value: 60.5,
              textStyle: GaugeTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: isCardView ? 14 : 18,
                  fontFamily: 'Times'),
              offsetUnit: GaugeSizeUnit.factor,
              markerOffset: -0.12),
          MarkerPointer(
              markerType: MarkerType.text,
              text: 'Good',
              value: 100.5,
              textStyle: GaugeTextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: isCardView ? 14 : 18,
                  fontFamily: 'Times'),
              offsetUnit: GaugeSizeUnit.factor,
              markerOffset: -0.12)
        ],
      ),
    ],
  );
}
}