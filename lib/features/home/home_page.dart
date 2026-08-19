import 'package:flutter/material.dart';
import 'package:safeyatra/widgets/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          // Greetings
          Row(
            children: [
              Card(
                shape: const CircleBorder(),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("👋"),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Ram!",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Stay aware, stay safe.",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white60,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          // current locations
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 7,
                right: 7,
                top: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF1E4878),
                              Color(0xFF14234B),
                              Color(0xFF1F142D),
                            ],
                            stops: [0.0, 0.5, 1.0],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.location_on, color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Current Location",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.white60, fontSize: 13),
                          ),
                          Text(
                            "Koramangala",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                          ),
                          Text(
                            "Bengaluru Urban District",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.white60, fontSize: 13),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_city_sharp,
                                size: 13,
                                color: Colors.white60,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Karnataka, India",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      color: Colors.white60,
                                      fontSize: 13,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF102242),
                      ),
                      onPressed: (){}, 
                      child: Text("Update Location",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.blueAccent))
                    )
                  )
                ],
              ),
            ),
          ),
          // ai safety scores
          Card(),
          //
          Card(),
          Row(),
        ],
      ),
    );
  }
}
