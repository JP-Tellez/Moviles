import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // List<String> dias = [
    //   'Monday',
    //   'Tuesday',
    //   'Wednesday',
    //   'Thursday',
    //   'Friday',
    //   'Saturday',
    //   'Sunday'
    // ];

    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 50, 86, 1),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                "Hourly forecast",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 29, 53, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "16°",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.nights_stay,
                          color: Colors.blue[300],
                        ),
                        Text(
                          "Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "14°",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.nights_stay,
                          color: Colors.blue[300],
                        ),
                        Text(
                          "12 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "14°",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.nights_stay,
                          color: Colors.blue[300],
                        ),
                        Text(
                          "1 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "13°",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.nights_stay,
                          color: Colors.blue[300],
                        ),
                        Text(
                          "2 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "11°",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Icon(
                          Icons.nights_stay,
                          color: Colors.blue[300],
                        ),
                        Text(
                          "3 AM",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "10-day forecast",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Todays temperature is 28°/9°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Today",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.wb_sunny_rounded,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "28°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Tuesday temperature is 27°/9°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Tuesday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "27°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content:
                                  Text("Wednsedays temperature is 26°/7°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Wednesday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.sunny_snowing,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "26°/7°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Thursday temperature is 28°/8°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Thursday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.cloudy_snowing,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "28°/8°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Fridays temperature is 28°/9°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Friday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "28°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content:
                                  Text("Saturdays temperature is 29°/9°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Saturday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.wb_sunny_sharp,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "29°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Sundays temperature is 29°/8°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Sunday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.snowing,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "29°/8°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Mondays temperature is 29°/8°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Monday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.wb_sunny_sharp,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "29°/8°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Tusday temperature is 24°/6°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Tuesday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.sunny_snowing,
                            color: Colors.amber,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "24°/6°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    // all(Radius.circular(20))
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 29, 53, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content:
                                  Text("Wednesday temperature is 27°/9°")));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Wednesday",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.cloudy_snowing,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "27°/9°",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
