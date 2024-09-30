import 'package:assingment_flutter/screen/pharmacy.dart';
import 'package:flutter/material.dart';

class AppPharmamate extends StatefulWidget {
  const AppPharmamate({Key? key}) : super(key: key);

  @override
  State<AppPharmamate> createState() => _AppPharmamateState();
}

class _AppPharmamateState extends State<AppPharmamate> {
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
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.heart_broken),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),

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
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                  ),
                ),
              ),
              ListView(
                children: [
                  Card(
                    margin: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: TextField(
                      style: TextStyle(color:Colors.grey),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 26,
                          color:Colors.black54,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color:Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200], // Example fill color; adjust as needed
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0), // Set the radius as per your need
                      child: Container(
                        padding: EdgeInsets.all(0),
                        child: SizedBox(
                          height: 180, // Set the height of the image
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTljbuLAcT4Ra8DdqBdwCJYir8y0vAuJ7k7c-ZjCD_QiQnuGB_b2MmSxx8Es-xJoq_GIKY&usqp=CAU',
                            fit: BoxFit.cover, // Ensures the image fits within the container
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    margin: EdgeInsets.all(15), // Adds a margin of 10 pixels on all sides
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Show All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                 Container(
                   height: 120,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Image.network(
                                 'https://yt3.googleusercontent.com/3n_3TTJ7xXQBJuPUDuW949EcpLX0xAS9a9ENehv1mHyi-js6iLDH7QW2JRgK6tXcpD5hWKZd2Q=s900-c-k-c0x00ffffff-no-rj',
                                 fit: BoxFit.cover,
                                 width: 70, // Adjust width as needed
                                 height: 70, // Adjust height as needed
                               ),
                             ),
                             const SizedBox(height:10), // Space between the image and text
                             Text(
                               "Care",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Image.network(
                                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWRqzv5Ka5a1ceswOZBP4Q-YAt4akvqP-PYw&s',
                                 fit: BoxFit.cover,
                                 width: 70, // Adjust width as needed
                                 height: 70, // Adjust height as needed
                               ),
                             ),
                             const SizedBox(height:10), // Space between the image and text
                             Text(
                               "Heart",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Image.network(
                                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP9v6yQn6XQYBCdpxRU68CMbKgBwFANoiXcg&s',
                                 fit: BoxFit.cover,
                                 width: 70, // Adjust width as needed
                                 height: 70, // Adjust height as needed
                               ),
                             ),
                             const SizedBox(height:10), // Space between the image and text
                             Text(
                               "Brain",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Image.network(
                                 'https://cdn-icons-png.flaticon.com/512/7051/7051035.png',
                                 fit: BoxFit.cover,
                                 width: 70, // Adjust width as needed
                                 height: 70, // Adjust height as needed
                               ),
                             ),
                             const SizedBox(height:10), // Space between the image and text
                             Text(
                               "Brain"
                                   "",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Image.network(
                                 'https://cdn-icons-png.flaticon.com/512/504/504333.png',
                                 fit: BoxFit.cover,
                                 width: 70, // Adjust width as needed
                                 height: 70, // Adjust height as needed
                               ),
                             ),
                             const SizedBox(height:10), // Space between the image and text
                             Text(
                               "Stomach",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(50),
                               child: Image.network(
                                 'https://cdn-icons-png.freepik.com/512/2721/2721072.png',
                                 fit: BoxFit.cover,
                                 width: 70, // Adjust width as needed
                                 height: 70, // Adjust height as needed
                               ),
                             ),
                             const SizedBox(height:10), // Space between the image and text
                             Text(
                               "Lung",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),

                  // show all
                  Container(
                    margin: EdgeInsets.all(15), // Adds a margin of 10 pixels on all sides
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Show All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                 GridView.count(
                    crossAxisCount:2,
                    shrinkWrap: true,
                    physics:const NeverScrollableScrollPhysics(),
                    children:<Widget> [
                      Card(
                        child: InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Pharmacy(),),);},
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            width: MediaQuery.of(context).size.width / 2,
                            padding: const EdgeInsets.all(0),
                            decoration: const BoxDecoration(),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Icon(Icons.heart_broken_outlined, color: Colors.red, size: 24),
                                  ],
                                ),
                                SizedBox(
                                  height: 100,
                                  width: 140,
                                  child: Image.network(
                                    'https://target.scene7.com/is/image/Target/GUEST_892c1edd-512d-43c6-b85c-fbf1ca0e03dd?wid=488&hei=488&fmt=pjpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0), // Adding some padding for spacing
                                  child: Text(
                                    'Proper',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0), // Spacing for text
                                  child: Text(
                                    'Baby 1',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4.0), // Additional flexible text
                                    child: Text(
                                      'Baby diaperjenalweks',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(Icons.heart_broken_outlined, color: Colors.red, size: 24),
                                ],
                              ),
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjJqo66VdkEsg7MtDPtiTFUXMzFnFCP8GpVQ&s',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0), // Adding some padding for spacing
                                child: Text(
                                  'Drops',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const Flexible(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0), // Additional flexible text
                                  child: Text(
                                    'Niron Pharmacy',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(Icons.heart_broken_outlined, color: Colors.red, size: 24),
                                ],
                              ),
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://beeovita.com/image/cache/catalog/2020/05.2020/PICBACK3D/500_97234-648x648.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0), // Adding some padding for spacing
                                child: Text(
                                  'Meridol',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0), // Spacing for text
                                child: Text(
                                  '구강 및 치아 관리',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          width: MediaQuery.of(context).size.width / 2,
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(Icons.heart_broken_outlined, color: Colors.red, size: 24),
                                ],
                              ),
                              SizedBox(
                                height: 100,
                                width: 140,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa-fqTZu4CY2FTHHT-KVU-bSNo8FuFbBjHdwjYvNQKVSIx2OsNxuanqSryoGKEiUsBSLU&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0), // Adding some padding for spacing
                                child: Text(
                                  'Niron Pharmacy',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const Flexible(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0), // Additional flexible text
                                  child: Text(
                                    'ជាគ្រាប់សម្រាប់លេប',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                            ],
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
