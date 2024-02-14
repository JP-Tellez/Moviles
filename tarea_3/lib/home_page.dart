import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> emojis = [
    "assets/burger.png",
    "assets/hotdog.png",
    "assets/fries.png",
    "assets/soda.png",
    "assets/icecream.png"
  ];
  List<String> menu = ["Burger", "Hot Dog", "Fries", "Soda", "Ice Cream"];
  List<bool> selected = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Menu Demo',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Explore the restaurants delicious menu items below!",
                overflow: TextOverflow.clip,
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("${menu[index]}"),
                      leading: Image.asset(
                        '${emojis[index]}',
                        height: 30,
                        width: 30,
                      ),
                      tileColor: selected[index] ? Colors.blue : Colors.white,
                      onTap: () {
                        if (selected[index] == false) {
                          selected[0] = false;
                          selected[1] = false;
                          selected[2] = false;
                          selected[3] = false;
                          selected[4] = false;
                          selected[index] = true;
                        } else if (selected[index] == true) {
                          selected[index] = false;
                        }
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    child: Text("PickUp"),
                    color: Colors.grey[400],
                    onPressed: () {
                      String comida = "";
                      for (var i = 0; i < menu.length; i++) {
                        if (selected[i] == true) {
                          comida = menu[i];
                        }
                      }
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('PickUp'),
                          content: Text(comida == ""
                              ? "Selecciona un platillo"
                              : "${comida}"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 4,
                      color: Colors.grey,
                    ),
                  ),
                  MaterialButton(
                    child: Text("Delivery"),
                    color: Colors.grey[400],
                    onPressed: () {
                      String comida = "";
                      for (var i = 0; i < menu.length; i++) {
                        if (selected[i] == true) {
                          comida = menu[i];
                        }
                      }
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Delivery'),
                          content: Text(comida == ""
                              ? "Selecciona un platillo"
                              : "${comida}"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
