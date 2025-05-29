import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({super.key});

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // var countProvider = Provider.of<CountProvider>(context,listen: false);
    // Timer.periodic(Duration(seconds: 2), (timer) {countProvider.setCount();});
  }
  @override
  Widget build(BuildContext context) {
    var countProvider = Provider.of<CountProvider>(context, listen: false);
    print("Widget Start");
    return Scaffold(
      appBar: AppBar(title: Text("Provider demo"),),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Consumer<CountProvider>(builder: (context, value, child){
                print("only text widget is getting rebuild");
                return Text(value!.count.toString(),
                  style: TextStyle(fontSize: 40, color:Colors.red));
              }),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                countProvider.setCount();
              },
                  child: Text("Count + "))
            ],
          ),
        ),
      ),
    );
  }
}

