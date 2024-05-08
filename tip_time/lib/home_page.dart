import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_time/providers/tip_time_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip Time'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 14),
          ListTile(
            leading: Icon(Icons.room_service),
            title: Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: context.watch<TipTimeProvider>().getCostController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Cost of Service",
                ),
              ), // agrega controller y decoracion
            ),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text("How was the service?"),
          ),
          // agregar el grupo de radios
          Column(
            children: radioGroupGenerator(),
          ),
          // agregar el switch
          SwitchListTile(
              title: Text("Round up tip?"),
              secondary: Icon(Icons.card_giftcard),
              value: context.watch<TipTimeProvider>().getIsRoundedRequested,
              onChanged: (newValue) {
                context.read<TipTimeProvider>().setIsRoundedSelected(newValue);
              }),
          MaterialButton(
            child: Text("CALCULATE"),
            onPressed: () {
              // llamar a tip calculation
              context.read<TipTimeProvider>().tipCalculation();
            },
          ),
          Text("Tip amount: \$${context.watch<TipTimeProvider>().getPropina}"),
        ],
      ),
    );
  }

  // crear un grupo de N radios en base a N datos que queramos listar
  List<ListTile> radioGroupGenerator() {
    return context
        .watch<TipTimeProvider>()
        .radioGroupValues
        .entries
        .map((entry) => ListTile(
              title: Text("${entry.value}"),
              trailing: Radio(
                value: entry.key,
                groupValue:
                    context.watch<TipTimeProvider>().getCurrentRadioGroupValue,
                onChanged: (int? selectedRadio) {
                  context
                      .read<TipTimeProvider>()
                      .setSelectedRadio(selectedRadio);
                },
              ),
              leading: Image.asset(
                "${context.watch<TipTimeProvider>().radioGroupAssets[entry.key]}",
                height: 30,
              ),
            ))
        .toList();
  }
}
