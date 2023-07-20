import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Product List"),
    ),
       body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){

                },
                child: Row(children: [
                Container(
                  padding: EdgeInsets.all(20),
                  width: 120,
                  height: 150,
                  child: const Image(
                    image: NetworkImage(
                        "https://rukminim2.flixcart.com/image/312/312/ktketu80/mobile/2/y/o/iphone-13-mlpk3hn-a-apple-original-imag6vpyur6hjngg.jpeg?q=70"),
                    fit: BoxFit.fill,
                  ),
                ),
                 Column(children: [
                   Padding(
                     padding: EdgeInsets.only(left: 8, bottom: 8),
                     child: Text(
                       "iphone",
                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(left: 8),
                     child: Text("50,000"),
                   ),
                 ],),

                ],),
              );

            })
    );
  }
}
