import 'package:flutter/material.dart';
import 'package:iot_app/Drawer/drawer_main.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature'),
        backgroundColor: Colors.black,
      ),
      drawer: drawermain(context),
      backgroundColor: Colors.grey.shade700,
      body: PageView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        pageSnapping: true,
        allowImplicitScrolling: false,
        onPageChanged: (index) {
          setState(() {
            currentpage = index;
          });
        },
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 400,
                height: 650,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "MOTOR 1",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  backgroundColor: Colors.transparent,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 79,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 79,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${79} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 50,
                                      maximum: 100,
                                      interval: 10,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 75,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 75,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${75} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 50,
                                      maximum: 150,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 105,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 105,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${105} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 0,
                                      maximum: 300,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 210,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 210,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${210} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 100,
                                      maximum: 800,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 209,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 209,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${209} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 80,
                                      maximum: 120,
                                      interval: 10,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 97,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 97,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${97} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              row()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 400,
                height: 650,
                child: Card(
                  elevation: 8,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "MOTOR 2",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 37,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 37,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${37} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 50,
                                      maximum: 100,
                                      interval: 10,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 56,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 56,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${56} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 50,
                                      maximum: 150,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 130,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 130,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${130} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 0,
                                      maximum: 300,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 150,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 150,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${150} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 100,
                                      maximum: 800,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 569,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 569,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${569} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: SfRadialGauge(
                                  title: const GaugeTitle(text: "text"),
                                  animationDuration: 1000,
                                  enableLoadingAnimation: true,
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                      minimum: 80,
                                      maximum: 120,
                                      interval: 10,
                                      showLastLabel: true,
                                      axisLineStyle:
                                          const AxisLineStyle(thickness: 20),
                                      showTicks: true,
                                      pointers: const <GaugePointer>[
                                        NeedlePointer(
                                          animationType:
                                              AnimationType.bounceOut,
                                          value: 97,
                                          enableAnimation: true,
                                          needleStartWidth: 0,
                                          needleEndWidth: 6,
                                          needleColor: Colors.black,
                                        ),
                                        RangePointer(
                                            value: 97,
                                            width: 20,
                                            enableAnimation: true,
                                            color: Colors.green),
                                      ],
                                      annotations: const <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          widget: Text(
                                            "${97} %",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          positionFactor: 0.9,
                                          angle: 90,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              row()
            ],
          ),
        ],
      ),
    );
  }

  Widget row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentpage == 0
            ? const Icon(Icons.circle, size: 20, color: Colors.white70)
            : const Icon(Icons.circle_outlined,
                size: 20, color: Colors.white70),
        currentpage == 1
            ? const Icon(Icons.circle, size: 20, color: Colors.white70)
            : const Icon(Icons.circle_outlined,
                size: 20, color: Colors.white70),
      ],
    );
  }
}
