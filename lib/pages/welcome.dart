import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 180,
                left: 30,
                right: 30,
                child: Column(
                  children: [
                    Image.asset(
                      "images/T-Farmer.png",
                      width: 230,
                    ),
                    Image.asset(
                      "images/rafiki.png",
                      width: 350,
                      height: 320,
                    ),
                    const Text(
                      'Catat dan pantau kondisi peralatan pertanianmu dengan mudah!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 40,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const Home()));
                      },
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 51, 143, 229),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            'Mulai',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
