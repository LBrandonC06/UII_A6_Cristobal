import 'package:flutter/material.dart';
import 'package:cristobal0456/data/product_data.dart';
import 'package:cristobal0456/screens/authscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: height * 0.95,
            width: width * 0.95,
            color: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                        onPageChanged: (page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(products[index].img),
                                  ),
                                ),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AuthScreen()),
                                      );
                                    },
                                    child: Text(
                                      "Skip",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                              //Mostrar Los Datos de la BD
                              Text(
                                products[index].id,
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].c_postal,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].colonia,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].calle,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].num_int,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].num_ext,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].telefono,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                products[index].propietario,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                              Text(
                                'Luis Brandon Cristobal Ramirez-0456',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xff000000)),
                              ),
                            ], // Container
                          ); // Column
                        }), // PageView.builder
                  ),
                  SizedBox(
                    height: 10,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 15,
                            width: currentPage == index ? 25 : 10,
                            color: Color(0xffffffff),
                          );
                        }), // ListView.builder
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        currentPage == 2
                            ? ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.arrow_forward_ios))
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
