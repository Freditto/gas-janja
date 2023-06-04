import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GasDetailScreen extends StatefulWidget {
  final String id, gas_code, name, created_at, percent, weight;

   GasDetailScreen(
    this.id, 
    this.gas_code, 
    this.name, 
    this.created_at, 
    this.percent, 
    this.weight,
    {super.key}
  );

  @override
  State<GasDetailScreen> createState() => _GasDetailScreenState();
}

class _GasDetailScreenState extends State<GasDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      title: Text(widget.name),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      // ],
    ),

    body: SingleChildScrollView(
      child: Column(
        children: [
    
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Container(
                  height: 300,
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(minimum: 0, maximum: 100,
                              ranges: <GaugeRange>[
                                GaugeRange(startValue: 0, endValue: 25, color:Colors.green),
                                GaugeRange(startValue: 25,endValue: 75,color: Colors.orange),
                                GaugeRange(startValue: 75,endValue: 100,color: Colors.red)],
                              pointers: <GaugePointer>[
                                NeedlePointer(value: double.parse(widget.percent))],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(widget: Container(child:
                                Text(widget.percent,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                                    angle: 90, positionFactor: 0.5
                                )]
                          )])
                )),
          ),

          Center(
            child: Image.asset(
                'assets/gaslogo.png',
                width: 100, // set the desired width
                height: 100, // set the desired height
              ),
          ),
    
          // Padding(
          //             padding: const EdgeInsets.all(16.0),
          //   child: Row(
          //                   children: [
          //                     Expanded(
          //                       // child: SfRadialGauge(
          
          //                       //   axes: <RadialAxis>[
          //                       //     RadialAxis(
          //                       //       minimum: 0,
          //                       //       maximum: 100,
          //                       //       showLabels: false,
          //                       //       showAxisLine: false,
          //                       //         ranges: <GaugeRange>[
          //                       //           GaugeRange(startValue: 0, endValue: 25, color:Colors.green),
          //                       //           GaugeRange(startValue: 25,endValue: 75,color: Colors.orange),
          //                       //           GaugeRange(startValue: 75,endValue: 100,color: Colors.red)],
          //                       //         pointers: <GaugePointer>[
          //                       //           NeedlePointer(value: 90)],
          //                       //         annotations: <GaugeAnnotation>[
          //                       //           GaugeAnnotation(widget: Container(child:
          //                       //           Text('90.0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
          //                       //               angle: 90, positionFactor: 0.5
          //                       //           )]
          //                       //     )]),
          
          //                       child: CircularPercentIndicator(
          //                         radius: 70.0,
          //                         lineWidth: 13.0,
          //                         animation: true,
          //                         percent: 0.7,
          //                         center: Text(
          //                           "70.0%",
          //                           style: TextStyle(
          //                               fontWeight: FontWeight.bold,
          //                               fontSize: 20.0),
          //                         ),
          //                         circularStrokeCap: CircularStrokeCap.round,
          //                         progressColor: Colors.purple,
          //                       ),
          //                     ),
          //                     Expanded(
          //                       child: Image.asset(
          //                       'assets/gaslogo.png',
          //                       width: 100, // set the desired width
          //                       height: 100, // set the desired height
          //                                             ),
          //                     ),
          //                   ],
          //                 ),
          // ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    // height: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              spreadRadius: 20,
                              blurRadius: 10,
                              offset: const Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gas Code',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            widget.gas_code,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    // height: 220,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.01),
                              spreadRadius: 20,
                              blurRadius: 10,
                              offset: const Offset(0, 10))
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cylinder Weight',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                              widget.weight + ' kg',
                            style: TextStyle(fontSize: 16),
                          )
                              
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

    
            Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        // height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.01),
                                  spreadRadius: 20,
                                  blurRadius: 10,
                                  offset: const Offset(0, 10))
                            ],
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gas Status',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Connected',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        // height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.01),
                                  spreadRadius: 20,
                                  blurRadius: 10,
                                  offset: const Offset(0, 10))
                            ],
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Refresh',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                  'last: 2 days ago',
                                style: TextStyle(fontSize: 16),
                              )
                                  
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
        ]),
    ),
    );
  }
}
