// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            margin: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: context.watch<CounterProvider>().getSelectedColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                "${context.watch<CounterProvider>().getCounter}",
                style: TextStyle(
                  fontSize: 72,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {
                  context.read<CounterProvider>().changeBgColor("black");
                },
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {
                  context.read<CounterProvider>().changeBgColor("red");
                },
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {
                  context.read<CounterProvider>().changeBgColor("blue");
                },
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {
                  context.read<CounterProvider>().changeBgColor("green");
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<CounterProvider>().incrementCounter();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<CounterProvider>().decrementCounter();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {
                    context.read<CounterProvider>().resetCounter();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
