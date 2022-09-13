import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 600,
        padding: const EdgeInsets.only(top: 20),
        color: const Color(0xFFCEDDEE),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 500,
              child: SingleChildScrollView(
                child: Column(children: [
                  for (int i = 1; i < 3; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 140,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1)
                          ]),
                      child: Row(children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "itemPage");
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, right: 60),
                                height: 90,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF475269),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Image.asset(
                                "assets/images/$i.png",
                                height: 130,
                                width: 130,
                                fit: BoxFit.contain,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Nike Shoe",
                                style: TextStyle(
                                    color: Color(0xFF475269),
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF5F9FD),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color(0xFF475269)
                                                  .withOpacity(0.3),
                                              blurRadius: 5,
                                              spreadRadius: 1)
                                        ]),
                                    child: const Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const Text(
                                      "02",
                                      style: TextStyle(
                                          color: Color(0xFF475269),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFF5F9FD),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color(0xFF475269)
                                                  .withOpacity(0.3),
                                              blurRadius: 5,
                                              spreadRadius: 1)
                                        ]),
                                    child: const Icon(
                                      CupertinoIcons.add,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Column(children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0xFF475269)
                                            .withOpacity(0.5),
                                        blurRadius: 5,
                                        spreadRadius: 1)
                                  ]),
                              child: const Icon(Icons.delete,
                                  color: Colors.red, size: 25),
                            ),
                            const Spacer(),
                            const Text(
                              "\$50",
                              style: TextStyle(
                                  color: Color(0xFF475269),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )
                          ]),
                        )
                      ]),
                    ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Delivery Fee: ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF475269)),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF475269)),
                          )
                        ],
                      ),
                      const Divider(
                        height: 20,
                        thickness: 0.4,
                        color: Color(0xFF475269),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Sub-Total: ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF475269)),
                          ),
                          Text(
                            "\$100",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF475269)),
                          )
                        ],
                      ),
                      const Divider(
                        height: 20,
                        thickness: 0.3,
                        color: Color(0xFF475269),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Discount: ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF475269)),
                          ),
                          Text(
                            "-\$10",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
                          )
                        ],
                      )
                    ]),
                  )
                ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              decoration: const BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475269),
                        spreadRadius: 1,
                        blurRadius: 5)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 22,
                            color: Color(0xFF475269),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$110",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xFF475269),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Check Out",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
