import 'package:flutter/material.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({Key? key}) : super(key: key);

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Image.network(
                "https://care-cambodia.org/wp-content/uploads/2023/07/CARE_HORIZ_1c_SOLID.png",
                fit: BoxFit.contain,
                height: 30,
              ),
            ),
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
        padding: EdgeInsets.all(5),
        child: Stack(
          children: <Widget>[
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
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Baby & kide",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Baby",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Teeth & Mouth",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Fusce & kide",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "kide",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Bab",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                GridView.count(
                  crossAxisCount:2,
                  crossAxisSpacing: 12.0,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  children:<Widget> [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 350, // Updated height to 350
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,color: Colors.red,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the children horizontally
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 60,
                                    width: 70,
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjJqo66VdkEsg7MtDPtiTFUXMzFnFCP8GpVQ&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "parmper",
                                  style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Baby daipers",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$20",
                                  style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, fontSize: 18),
                                ),
                                Container(
                                  width: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                    child: (
                                        Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 350, // Updated height to 350
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,color: Colors.red,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the children horizontally
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 60,
                                    width: 70,
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdsJsBh6Z24tl86bPXE7ZfMrXfooW2BHPRIw&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "parmper",
                                  style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Baby Special ",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$25",
                                  style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, fontSize: 18),
                                ),
                                Container(
                                  width: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                    child: (
                                        Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 350, // Updated height to 350
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_border,color: Colors.grey,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the children horizontally
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 60,
                                    width: 70,
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh0LenbkRrvS7z2qjcgWnOt8NHeAgFVz2smT6GQ6zszY_1P-3XYEzheVgV7LOsgn25L1o&usqp=CAU',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "parmper",
                                  style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Baby Curash",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$50",
                                  style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, fontSize: 18),
                                ),
                                Container(
                                  width: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                    child: (
                                        Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 350, // Updated height to 350
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,color: Colors.red,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the children horizontally
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 60,
                                    width: 70,
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-6CCW_3fpCLEtItgj__xF5SJ81NZ9ESCxfA&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "parmper",
                                  style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Kundy Cambodia",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$15.99",
                                  style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, fontSize: 18),
                                ),
                                Container(
                                  width: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                    child: (
                                        Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 350, // Updated height to 350
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,color: Colors.red,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the children horizontally
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 60,
                                    width: 100,
                                    child: Image.network(
                                      'https://shopbabyworld.com/wp-content/uploads/2019/12/8934755030758.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "parmper",
                                  style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Bobby Newborn",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$12.50",
                                  style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, fontSize: 18),
                                ),
                                Container(
                                  width: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                    child: (
                                        Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 350, // Updated height to 350
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_border,color: Colors.grey,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center, // Centers the children horizontally
                              children: <Widget>[
                                Container(
                                  child: SizedBox(
                                    height: 60,
                                    width: 100,
                                    child: Image.network(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFEx0Wcp3EyagF0Ys9PXpgmvdW4cxaof7eag&s',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "parmper",
                                  style: TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Kundy Cambodia",
                                  style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$21.99",
                                  style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold, fontSize: 18),
                                ),
                                Container(
                                  width: 40,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: InkWell(
                                    onTap: (){},
                                    child: (
                                        Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
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
