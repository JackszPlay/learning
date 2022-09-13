import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:footwear_app_ui/widgets/item_bottom_navbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Color(0xFF475269),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1)
                      ]),
                  child: const Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: MediaQuery.of(context).size.height * .43,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 230,
                  width: 230,
                  margin: const EdgeInsets.only(top: 20, right: 70),
                  decoration: BoxDecoration(
                    color: const Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Image.asset(
                  "assets/images/1.png",
                  height: 350,
                  width: 350,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .4,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
                color: const Color(0xFFF5F9FD),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 1)
                ]),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "New Nike Shoe",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF475269)),
                  ),
                  Text("\$55",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.redAccent)),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                child: RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemSize: 20,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                    onRatingUpdate: (index) {}),
              ),
              const SizedBox(height: 15),
              const Text(
                "This is description of the shoe product.This is description of the shoe product.This is description of the shoe product.This is description of the shoe product. ",
                style: TextStyle(fontSize: 17, color: Color(0xFF475269)),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Size: ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF475269),
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      for (int i = 5; i < 10; i++)
                        Container(
                          height: 35,
                          width: 35,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: const Color(0xFFF5F9FD),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0xFF475269)
                                        .withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 1)
                              ]),
                          child: Text(
                            i.toString(),
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        )
                    ],
                  )
                ],
              )
            ]),
          )
        ]),
      )),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
