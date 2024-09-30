import 'package:assingment_flutter/component/login.dart';
import 'package:assingment_flutter/screen/Navbar.dart';
import 'package:assingment_flutter/screen/app_pharmamate.dart';
import 'package:flutter/material.dart';

class AppDashboard extends StatefulWidget {
  const AppDashboard({Key? key}) : super(key: key);

  @override
  State<AppDashboard> createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Navbar
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.dashboard_customize),
            label: 'Devices',
          ),
          NavigationDestination(
            icon: Icon(Icons.ac_unit_sharp),
            label: 'Automation',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notification_add_outlined),
            icon: Icon(Icons.notification_add_outlined),
            label: 'Notifications',
          ),
        ],
      ),

      appBar: AppBar(
        title: Text(
          "iSHOP",
          style: TextStyle(
            fontSize: 24,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // This centers the title
        leading: Row(
          mainAxisSize: MainAxisSize.min, // Ensures leading icons don't take up too much space
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.person_outline, size: 28),
            ),
          ],
        ),
        actions: [
          // Add any other actions you may need here
        ],
      ),
      endDrawer: const Drawer(),

      body: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        color:const Color(0xe4e4e4e4),
        child: Stack(
          children: <Widget>[
            ListView(
              children:<Widget> [
                GridView.count(
                  crossAxisCount:2,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  children:<Widget> [
                    //// cart 1  ///NavigationBarApp
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationBarApp()));},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Living Room', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://static.vecteezy.com/system/resources/previews/028/754/338/original/graduate-student-3d-icon-illustration-png.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>AppPharmamate()));},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Desk lamp', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQGjfMRIAcwtZ0KaAkJoRBVmxiZujDTCZ2Jw&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Garage Door', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/5231/5231019.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Kide Room', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/718/718339.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('DHT 12', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTbWMnpCdl-yCqELU7o9xqDZANw2NBZCIeZw&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('backyard', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3a6A0lmeLwn-fWppvzAaZjL4oE0Qobvd87g&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Rooming', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZVFd-QdGnYcnl2Rs9HqVdSVL4yqgpfO5VzA&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 20), // Adds padding around the content
                            child: Center(  // Centers the content inside the Card
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Planing', style: TextStyle(fontSize: 26.0,color:Colors.purple,fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 20),
                                  Expanded(  // Wrap the image with Expanded
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/11473/11473478.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10), // Adds spacing between the image and text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
