import 'package:flutter/material.dart';

class AppMainDashboard extends StatefulWidget {
  const AppMainDashboard({Key? key}) : super(key: key);

  @override
  State<AppMainDashboard> createState() => _AppMainDashboardState();
}

class _AppMainDashboardState extends State<AppMainDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                "https://e7.pngegg.com/pngimages/155/90/png-clipart-green-and-white-snake-and-chalice-icon-faculty-of-pharmacy-silpakorn-university-pharmacist-pharmaceutical-drug-naplex-pharmacy-text-logo-thumbnail.png",
                fit: BoxFit.contain,
                height: 40,
              ),
            ),
            SizedBox(width: 10), // Add space between the image and text
            Text('Pharma',style: TextStyle(color:Colors.black87,fontSize: 24,fontWeight:FontWeight.bold )),
            Text('Mate',style: TextStyle(color:Colors.blue,fontSize: 24,fontWeight:FontWeight.bold ),)
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.notification_add_outlined,
              size: 28,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.pink,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              //by default it is vertical scrollable
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      color: Colors.pink,
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
